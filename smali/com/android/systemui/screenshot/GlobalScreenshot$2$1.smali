.class Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$2;Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$navBarVisible:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$finisher:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$statusBarVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$navBarVisible:Z

    .line 713
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    .line 712
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZIIIILandroid/os/Message;)V

    .line 714
    return-void
.end method
