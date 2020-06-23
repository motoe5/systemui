.class Lcom/android/systemui/stackdivider/DividerView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 179
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const v7, 0x7f0a0025

    const v6, 0x7f0a0024

    const v5, 0x7f0a0023

    const v4, 0x7f0a0022

    const v3, 0x7f0a0021

    .line 182
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-direct {v0, v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-direct {v0, v6, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 190
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 191
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-direct {v0, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {v0, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 196
    :cond_1
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 214
    :goto_0
    return-void

    .line 199
    :cond_2
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 200
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-direct {v0, v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-direct {v0, v6, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 205
    :cond_3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-direct {v0, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 209
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-direct {v0, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 211
    :cond_4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 212
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 218
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    .line 219
    .local v2, "currentPosition":I
    const/4 v3, 0x0

    .line 220
    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    packed-switch p2, :pswitch_data_0

    .line 237
    .end local v3    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_0
    if-eqz v3, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 239
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 240
    return v7

    .line 222
    .restart local v3    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 225
    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 228
    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 231
    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 234
    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 242
    .end local v3    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0021
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
