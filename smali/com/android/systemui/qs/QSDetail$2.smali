.class Lcom/android/systemui/qs/QSDetail$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    .line 339
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 343
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->-set0(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-wrap0(Lcom/android/systemui/qs/QSDetail;)V

    .line 346
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get1(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get5(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get3(Lcom/android/systemui/qs/QSDetail;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->-set0(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-wrap0(Lcom/android/systemui/qs/QSDetail;)V

    .line 358
    return-void
.end method
