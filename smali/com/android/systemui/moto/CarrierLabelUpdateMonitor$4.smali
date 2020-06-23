.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/moto/NetworkStateTracker$PanelExpansionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public updateExpansion(I)V
    .locals 8
    .param p1, "height"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 128
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 129
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 130
    .local v1, "loc":[I
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 131
    const/4 v4, 0x1

    aget v4, v1, v4

    iget-object v7, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v7}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    sub-int v2, v4, p1

    .line 132
    .local v2, "margin":I
    if-lez v2, :cond_5

    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-wrap0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Z

    move-result v3

    .line 133
    :goto_0
    const/4 v0, 0x0

    .line 134
    .local v0, "alpha":F
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int v4, v2, v4

    int-to-float v0, v4

    .line 137
    :cond_1
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_6

    const/4 v0, 0x0

    .line 138
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 140
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_4

    .line 144
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 145
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_4
    return-void

    .line 132
    .end local v0    # "alpha":F
    :cond_5
    const/4 v3, 0x0

    .local v3, "show":Z
    goto :goto_0

    .line 137
    .end local v3    # "show":Z
    .restart local v0    # "alpha":F
    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    move v4, v6

    .line 140
    goto :goto_2

    :cond_8
    move v5, v6

    .line 145
    goto :goto_3
.end method
