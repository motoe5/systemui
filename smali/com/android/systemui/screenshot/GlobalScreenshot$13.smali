.class Lcom/android/systemui/screenshot/GlobalScreenshot$13;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finalPos:Landroid/graphics/PointF;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->val$finalPos:Landroid/graphics/PointF;

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 922
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 923
    .local v1, "t":F
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get1(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v2

    const v3, 0x3f39999a    # 0.725f

    add-float/2addr v2, v3

    .line 924
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 925
    const v4, 0x3e8cccce    # 0.27500004f

    .line 924
    mul-float/2addr v3, v4

    .line 923
    sub-float v0, v2, v3

    .line 926
    .local v0, "scaleT":F
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 927
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 928
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 929
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 930
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 931
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 932
    return-void
.end method
