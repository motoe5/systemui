.class Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipManager;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipManager;
    .param p2, "-this1"    # Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5112(Landroid/view/IPinnedStackController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setPinnedStackController(Landroid/view/IPinnedStackController;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5339(ZI)V
    .locals 1
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5562(Z)V
    .locals 2
    .param p1, "isMinimized"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedState(ZZ)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5900(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 6
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustement"    # Z
    .param p5, "displayRotation"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_6205(Landroid/content/pm/ParceledListSlice;)V
    .locals 1
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setAppActions(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get2(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get2(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;-><init>(ZILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 2
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get2(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 2
    .param p1, "isMinimized"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get2(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$2;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustement"    # Z
    .param p5, "displayRotation"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get2(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;

    move v1, p4

    move v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;-><init>(ZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method
