.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 647
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;->val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 651
    return-void
.end method
