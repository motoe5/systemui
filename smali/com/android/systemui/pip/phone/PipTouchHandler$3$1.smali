.class Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler$3;->onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/pip/phone/PipTouchHandler$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;->this$1:Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    .line 692
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;->this$1:Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    iget-object v0, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 696
    return-void
.end method
