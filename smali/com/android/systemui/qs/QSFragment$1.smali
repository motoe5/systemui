.class Lcom/android/systemui/qs/QSFragment$1;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 373
    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFragment;->-get1(Lcom/android/systemui/qs/QSFragment;)J

    move-result-wide v2

    .line 372
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 375
    const-wide/16 v2, 0x1c0

    .line 372
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 376
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFragment;->-get0(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    iget-object v1, v1, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 380
    const/4 v0, 0x1

    return v0
.end method
