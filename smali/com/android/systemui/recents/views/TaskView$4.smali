.class Lcom/android/systemui/recents/views/TaskView$4;
.super Landroid/view/ViewOutlineProvider;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    .line 242
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->-get0(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskView;->-get0(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 247
    const v0, 0x3eb33333    # 0.35f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 248
    return-void
.end method
