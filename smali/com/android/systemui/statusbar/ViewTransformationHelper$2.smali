.class Lcom/android/systemui/statusbar/ViewTransformationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewTransformationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$endRunnable:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    .line 99
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->-wrap0(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    goto :goto_0
.end method
