.class Lcom/android/systemui/pip/phone/PipMenuActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

.field final synthetic val$animationFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$5;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$5;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    .line 373
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$5;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$5;->val$animationFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$5;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 380
    return-void
.end method
