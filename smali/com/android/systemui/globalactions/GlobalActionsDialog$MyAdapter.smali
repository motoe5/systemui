.class Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "-this1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 690
    const/4 v1, 0x0

    .line 692
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 693
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 695
    .local v0, "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 692
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 701
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 703
    .end local v0    # "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 718
    const/4 v1, 0x0

    .line 719
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 720
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 721
    .local v0, "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 719
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 727
    :cond_2
    if-ne v1, p1, :cond_3

    .line 728
    return-object v0

    .line 730
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 733
    .end local v0    # "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 734
    const-string/jumbo v5, " out of range of showable actions"

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 735
    const-string/jumbo v5, ", filtered count="

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 735
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v5

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 736
    const-string/jumbo v5, ", keyguardshowing="

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 736
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v5

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 737
    const-string/jumbo v5, ", provisioned="

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 737
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v5

    .line 733
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 742
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    .line 747
    .local v0, "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
