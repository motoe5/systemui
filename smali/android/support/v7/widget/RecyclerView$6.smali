.class Landroid/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 908
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 923
    :goto_0
    :pswitch_0
    return-void

    .line 910
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 913
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 916
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 917
    iget-object v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 916
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 920
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 866
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 867
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 868
    return-object v3

    .line 872
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    return-object v3

    .line 878
    :cond_1
    return-object v0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 900
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 932
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 933
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 934
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 938
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 940
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 941
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 885
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 886
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 891
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 893
    return-void
.end method

.method public onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 905
    return-void
.end method

.method public onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->dispatchUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 928
    return-void
.end method
