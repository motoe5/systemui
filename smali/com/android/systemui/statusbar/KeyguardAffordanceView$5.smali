.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field final synthetic val$mAnimationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$maxCircleSize:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$maxCircleSize:F

    .line 230
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->-set3(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)Z

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$maxCircleSize:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->-set2(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 237
    return-void
.end method
