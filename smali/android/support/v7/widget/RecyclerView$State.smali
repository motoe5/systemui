.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$State$LayoutState;
    }
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRemainingScrollHorizontal:I

.field mRemainingScrollVertical:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method static synthetic -set0(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "-this"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11655
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 11666
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11672
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11685
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 11690
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 11692
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11694
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11696
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11698
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11704
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11706
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 11640
    return-void
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "accepted"    # I

    .prologue
    .line 11646
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 11647
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11648
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 11647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11648
    const-string/jumbo v2, " but it is "

    .line 11647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11649
    iget v2, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 11647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11651
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 11866
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 11894
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 11895
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    .line 11894
    :goto_0
    return v0

    .line 11896
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getRemainingScrollHorizontal()I
    .locals 1

    .prologue
    .line 11907
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    return v0
.end method

.method public getRemainingScrollVertical()I
    .locals 1

    .prologue
    .line 11918
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 11858
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 11773
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method prepareForNestedPrefetch(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 11743
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 11744
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 11745
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11746
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11747
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11748
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11924
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11925
    const-string/jumbo v1, ", mData="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11925
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11926
    const-string/jumbo v1, ", mItemCount="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11926
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11927
    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11927
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11928
    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11929
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11930
    const-string/jumbo v1, ", mStructureChanged="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11930
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11931
    const-string/jumbo v1, ", mInPreLayout="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11931
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11932
    const-string/jumbo v1, ", mRunSimpleAnimations="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11932
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11933
    const-string/jumbo v1, ", mRunPredictiveAnimations="

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11933
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11934
    const/16 v1, 0x7d

    .line 11923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 11784
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method
