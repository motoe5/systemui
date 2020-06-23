.class Lcom/android/systemui/statusbar/phone/PanelView$1;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
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
    const/4 v5, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->-get2(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->-get6(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->-get2(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 120
    .local v1, "propertyValuesHolder":[Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    .line 121
    .local v0, "maxPanelHeight":I
    aget-object v2, v1, v5

    const/4 v3, 0x1

    new-array v3, v3, [F

    int-to-float v4, v0

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 123
    .end local v0    # "maxPanelHeight":I
    .end local v1    # "propertyValuesHolder":[Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-void
.end method
