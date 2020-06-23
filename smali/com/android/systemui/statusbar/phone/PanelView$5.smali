.class Lcom/android/systemui/statusbar/phone/PanelView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$clearAllExpandHack:Z

.field final synthetic val$expand:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$expand:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$clearAllExpandHack:Z

    .line 805
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    .line 820
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$expand:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-get5(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 830
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$clearAllExpandHack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-wrap1(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V

    .line 834
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    if-nez v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 838
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$expand:Z

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-get5(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 814
    :cond_0
    return-void
.end method
