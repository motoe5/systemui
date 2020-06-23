.class Lcom/android/systemui/screenshot/GlobalScreenshot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$reqBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$reqBundle:Landroid/os/Bundle;

    .line 775
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 783
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$reqBundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/os/Bundle;)V

    .line 786
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 789
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 790
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 791
    return-void
.end method
