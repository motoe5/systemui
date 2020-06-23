.class public final Landroid/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v1, 0x2

    .line 5336
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5338
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5343
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5345
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5346
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5336
    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5736
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5737
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5738
    .local v0, "itemView":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5741
    const/4 v1, 0x1

    .line 5740
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5743
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5744
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5746
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v1

    .line 5745
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5749
    .end local v0    # "itemView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5752
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5753
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5755
    :cond_0
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 5758
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5759
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5760
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5761
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5758
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5764
    :cond_1
    if-nez p2, :cond_2

    .line 5765
    return-void

    .line 5768
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 5769
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5770
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5776
    :goto_1
    return-void

    .line 5772
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 5773
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5774
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private tryBindViewHolderByDeadline(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z
    .locals 10
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5442
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5443
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 5444
    .local v1, "viewType":I
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5445
    .local v2, "startBindNs":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    .line 5446
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5445
    if-eqz v0, :cond_0

    .line 5448
    const/4 v0, 0x0

    return v0

    .line 5450
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5451
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    .line 5452
    .local v6, "endBindNs":J
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    sub-long v8, v6, v2

    invoke-virtual {v0, v4, v8, v9}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5453
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5454
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5455
    iput p3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5457
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "dispatchRecycled"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4000

    .line 5947
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5948
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5949
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5950
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5952
    :cond_0
    if-eqz p2, :cond_1

    .line 5953
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5955
    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5956
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5957
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 5359
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5360
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5361
    return-void
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 6324
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6325
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 6326
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6327
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6329
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6330
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 6331
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6330
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6333
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 6334
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6335
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 6336
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6335
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6339
    .end local v1    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .prologue
    .line 6027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6028
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6029
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6031
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 5526
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5527
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5528
    const-string/jumbo v2, "item count is "

    .line 5527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5528
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 5527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5528
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    .line 5527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5530
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5531
    return p1

    .line 5533
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0
.end method

.method dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 6178
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 6179
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6181
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 6182
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6184
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 6185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6188
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 6036
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_1

    .line 6037
    .end local v0    # "changedScrapSize":I
    :cond_0
    return-object v8

    .line 6040
    .restart local v0    # "changedScrapSize":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 6041
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6042
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 6043
    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6044
    return-object v1

    .line 6040
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6048
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6049
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 6050
    .local v3, "offsetPosition":I
    if-lez v3, :cond_5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 6051
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 6052
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 6053
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6054
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    .line 6055
    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6056
    return-object v1

    .line 6052
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6061
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_5
    return-object v8
.end method

.method getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 6282
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 6283
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 6285
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .prologue
    .line 6019
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5390
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 9
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 6126
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6127
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 6128
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6129
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 6130
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 6131
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6132
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6141
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6142
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6146
    :cond_0
    return-object v2

    .line 6147
    :cond_1
    if-nez p4, :cond_2

    .line 6151
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6152
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6153
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6127
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6159
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6160
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_7

    .line 6161
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6162
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_6

    .line 6163
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_5

    .line 6164
    if-nez p4, :cond_4

    .line 6165
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6167
    :cond_4
    return-object v2

    .line 6168
    :cond_5
    if-nez p4, :cond_6

    .line 6169
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6170
    return-object v7

    .line 6160
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 6174
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_7
    return-object v7
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    const/4 v8, 0x0

    .line 6072
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6075
    .local v4, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 6076
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6077
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 6078
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 6077
    if-eqz v7, :cond_1

    .line 6078
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v7, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 6077
    if-eqz v7, :cond_1

    .line 6079
    :cond_0
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6080
    return-object v1

    .line 6075
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6084
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    if-nez p2, :cond_4

    .line 6085
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v6

    .line 6086
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 6089
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 6090
    .local v5, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6091
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 6092
    .local v3, "layoutIndex":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    .line 6093
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 6094
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    .line 6093
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6096
    :cond_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6097
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 6098
    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6100
    return-object v5

    .line 6105
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6106
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    .line 6107
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6110
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_6

    .line 6111
    if-nez p2, :cond_5

    .line 6112
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6118
    :cond_5
    return-object v1

    .line 6106
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6121
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_7
    return-object v8
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6023
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 5555
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 6342
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6343
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6344
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6345
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 6346
    .local v3, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 6347
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6343
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6350
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6308
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6309
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6310
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6311
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6312
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 6313
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6314
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6310
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6319
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6321
    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 6226
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6227
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6228
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6229
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 6234
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6237
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 6198
    if-ge p1, p2, :cond_1

    .line 6199
    move v5, p1

    .line 6200
    .local v5, "start":I
    move v1, p2

    .line 6201
    .local v1, "end":I
    const/4 v4, -0x1

    .line 6207
    .local v4, "inBetweenOffset":I
    :goto_0
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6208
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 6209
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6210
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v6, v5, :cond_2

    .line 6208
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6203
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 6204
    .restart local v5    # "start":I
    move v1, p1

    .line 6205
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 6210
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-gt v6, v1, :cond_0

    .line 6213
    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 6214
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6216
    :cond_3
    invoke-virtual {v2, v4, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6223
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 6246
    add-int v3, p1, p2

    .line 6247
    .local v3, "removedEnd":I
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6248
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6249
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6250
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 6251
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 6257
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6248
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6258
    :cond_1
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 6260
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6261
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 6265
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 6192
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 6193
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 6194
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5965
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5966
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-set1(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 5967
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-set0(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 5968
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5969
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5970
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    .prologue
    .line 5813
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5814
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5815
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5814
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5817
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5818
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5819
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5821
    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 5838
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5842
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 5843
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5844
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5791
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5792
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5793
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5795
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5796
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 5800
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5801
    return-void

    .line 5797
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5798
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 13
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 5852
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 5853
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 5854
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5855
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v12

    .line 5854
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5855
    const-string/jumbo v12, " isAttached:"

    .line 5854
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5856
    iget-object v12, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_1

    move v8, v9

    .line 5854
    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5856
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    .line 5854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5853
    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 5859
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5860
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 5862
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    .line 5860
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5865
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5866
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 5868
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v10

    .line 5866
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5871
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-wrap0(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    .line 5873
    .local v7, "transientStatePreventsRecycling":Z
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_c

    if-eqz v7, :cond_c

    .line 5875
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v10, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    .line 5876
    :goto_0
    const/4 v1, 0x0

    .line 5877
    .local v1, "cached":Z
    const/4 v5, 0x0

    .line 5882
    .local v5, "recycled":Z
    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5883
    :cond_5
    iget v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v10, :cond_9

    .line 5884
    const/16 v10, 0x20e

    invoke-virtual {p1, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 5883
    if-eqz v10, :cond_9

    .line 5889
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5890
    .local v3, "cachedViewSize":I
    iget v10, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v10, :cond_6

    if-lez v3, :cond_6

    .line 5891
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5892
    add-int/lit8 v3, v3, -0x1

    .line 5895
    :cond_6
    move v6, v3

    .line 5896
    .local v6, "targetCacheIndex":I
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->-get0()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5897
    if-lez v3, :cond_8

    .line 5898
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v8, v10}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 5896
    if-eqz v8, :cond_8

    .line 5900
    add-int/lit8 v0, v3, -0x1

    .line 5901
    .local v0, "cacheIndex":I
    :goto_1
    if-ltz v0, :cond_7

    .line 5902
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5903
    .local v2, "cachedPos":I
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_d

    .line 5908
    .end local v2    # "cachedPos":I
    :cond_7
    add-int/lit8 v6, v0, 0x1

    .line 5910
    .end local v0    # "cacheIndex":I
    :cond_8
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5911
    const/4 v1, 0x1

    .line 5913
    .end local v3    # "cachedViewSize":I
    .end local v6    # "targetCacheIndex":I
    :cond_9
    if-nez v1, :cond_a

    .line 5914
    invoke-virtual {p0, p1, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 5915
    const/4 v5, 0x1

    .line 5932
    :cond_a
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v8, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5933
    if-nez v1, :cond_b

    xor-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_b

    if-eqz v7, :cond_b

    .line 5934
    iput-object v11, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5936
    :cond_b
    return-void

    .line 5873
    .end local v1    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_c
    const/4 v4, 0x0

    .local v4, "forceRecycle":Z
    goto :goto_0

    .line 5906
    .end local v4    # "forceRecycle":Z
    .restart local v0    # "cacheIndex":I
    .restart local v1    # "cached":Z
    .restart local v2    # "cachedPos":I
    .restart local v3    # "cachedViewSize":I
    .restart local v5    # "recycled":Z
    .restart local v6    # "targetCacheIndex":I
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method scrapView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5982
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5983
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5984
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 5983
    if-nez v1, :cond_0

    .line 5984
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    .line 5983
    if-eqz v1, :cond_2

    .line 5985
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 5986
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5988
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    .line 5986
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5990
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5991
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5999
    :goto_0
    return-void

    .line 5993
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 5994
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5996
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5997
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setViewCacheSize(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .prologue
    .line 5369
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5370
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5371
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 23
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 5579
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_1

    .line 5580
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5581
    const-string/jumbo v9, "("

    .line 5580
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5581
    const-string/jumbo v9, "). Item count:"

    .line 5580
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5581
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    .line 5580
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5582
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    .line 5580
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5584
    :cond_1
    const/16 v16, 0x0

    .line 5585
    .local v16, "fromScrapOrHiddenOrCache":Z
    const/4 v7, 0x0

    .line 5587
    .local v7, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5588
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5589
    .local v7, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_7

    const/16 v16, 0x1

    .line 5592
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_0
    if-nez v7, :cond_5

    .line 5593
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5594
    .restart local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_5

    .line 5595
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5597
    if-nez p2, :cond_4

    .line 5600
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5601
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5602
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5603
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 5607
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5609
    :cond_4
    const/4 v7, 0x0

    .line 5615
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    :goto_2
    if-nez v7, :cond_11

    .line 5616
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    .line 5617
    .local v8, "offsetPosition":I
    if-ltz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v8, v2, :cond_a

    .line 5618
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inconsistency detected. Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5619
    const-string/jumbo v9, "(offset:"

    .line 5618
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5619
    const-string/jumbo v9, ")."

    .line 5618
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5620
    const-string/jumbo v9, "state:"

    .line 5618
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5620
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    .line 5618
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5620
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    .line 5618
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5589
    .end local v8    # "offsetPosition":I
    .restart local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 5604
    :cond_8
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5605
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 5611
    :cond_9
    const/16 v16, 0x1

    goto :goto_2

    .line 5623
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v8    # "offsetPosition":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 5625
    .local v3, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5626
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v11, v3, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5628
    .restart local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_b

    .line 5630
    iput v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5631
    const/16 v16, 0x1

    .line 5634
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_b
    if-nez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v2, :cond_d

    .line 5637
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Landroid/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v21

    .line 5639
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_d

    .line 5640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5641
    .restart local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_c

    .line 5642
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5644
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    .line 5642
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5645
    :cond_c
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5646
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5648
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v9

    .line 5646
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5652
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v21    # "view":Landroid/view/View;
    :cond_d
    if-nez v7, :cond_e

    .line 5657
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5658
    .restart local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_e

    .line 5659
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5660
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_e

    .line 5661
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5665
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_e
    if-nez v7, :cond_11

    .line 5666
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5667
    .local v4, "start":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v2, p3, v10

    if-eqz v2, :cond_f

    .line 5668
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 5667
    if-eqz v2, :cond_f

    .line 5670
    const/4 v2, 0x0

    return-object v2

    .line 5672
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5673
    .restart local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5675
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v18

    .line 5676
    .local v18, "innerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v18, :cond_10

    .line 5677
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5681
    .end local v18    # "innerView":Landroid/support/v7/widget/RecyclerView;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    .line 5682
    .local v14, "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    sub-long v10, v14, v4

    invoke-virtual {v2, v3, v10, v11}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    .line 5692
    .end local v3    # "type":I
    .end local v4    # "start":J
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v8    # "offsetPosition":I
    .end local v14    # "end":J
    :cond_11
    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12

    .line 5693
    const/16 v2, 0x2000

    .line 5692
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5694
    const/4 v2, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v7, v2, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5695
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_12

    .line 5696
    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v13

    .line 5698
    .local v13, "changeFlags":I
    or-int/lit16 v13, v13, 0x1000

    .line 5699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5700
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 5699
    invoke-virtual {v2, v6, v7, v13, v9}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    .line 5701
    .local v17, "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v7, v0}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5705
    .end local v13    # "changeFlags":I
    .end local v17    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_12
    const/4 v12, 0x0

    .line 5706
    .local v12, "bound":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5708
    move/from16 v0, p1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5719
    .end local v12    # "bound":Z
    :cond_13
    :goto_3
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 5721
    .local v19, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v19, :cond_16

    .line 5722
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5723
    .local v20, "rvLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5730
    :goto_4
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5731
    if-eqz v16, :cond_18

    :goto_5
    move-object/from16 v0, v20

    iput-boolean v12, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5732
    return-object v7

    .line 5709
    .end local v19    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "rvLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .restart local v12    # "bound":Z
    :cond_14
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5715
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    .restart local v8    # "offsetPosition":I
    move-object/from16 v6, p0

    move/from16 v9, p1

    move-wide/from16 v10, p3

    .line 5716
    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v12

    .local v12, "bound":Z
    goto :goto_3

    .line 5724
    .end local v8    # "offsetPosition":I
    .end local v12    # "bound":Z
    .restart local v19    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 5725
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5726
    .restart local v20    # "rvLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .end local v20    # "rvLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_17
    move-object/from16 v20, v19

    .line 5728
    check-cast v20, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .restart local v20    # "rvLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    goto :goto_4

    .line 5731
    :cond_18
    const/4 v12, 0x0

    goto :goto_5
.end method

.method unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 6008
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-get1(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6013
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-set1(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 6014
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-set0(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 6015
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6016
    return-void

    .line 6011
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method updateViewCacheSize()V
    .locals 4

    .prologue
    .line 5374
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v0, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 5375
    .local v0, "extraCache":I
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5378
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 5379
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_1

    .line 5380
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5379
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5374
    .end local v0    # "extraCache":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "extraCache":I
    goto :goto_0

    .line 5382
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5404
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5409
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    return v1

    .line 5411
    :cond_0
    iget v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_1

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 5412
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5413
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    .line 5412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5415
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5417
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5418
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 5419
    return v2

    .line 5422
    .end local v0    # "type":I
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5423
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 5425
    :cond_5
    return v1
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6289
    add-int v4, p1, p2

    .line 6290
    .local v4, "positionEnd":I
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6291
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6292
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6293
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v1, :cond_1

    .line 6291
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6297
    :cond_1
    iget v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6298
    .local v3, "pos":I
    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    .line 6299
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6300
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 6305
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "pos":I
    :cond_2
    return-void
.end method
