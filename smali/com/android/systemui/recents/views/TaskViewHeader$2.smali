.class Lcom/android/systemui/recents/views/TaskViewHeader$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskViewHeader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$2;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 710
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$2;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 714
    return-void
.end method
