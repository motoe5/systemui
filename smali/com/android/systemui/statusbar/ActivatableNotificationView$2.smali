.class Lcom/android/systemui/statusbar/ActivatableNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 152
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-set4(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-set3(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 159
    return-void
.end method
