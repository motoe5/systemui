.class Lcom/android/systemui/pip/phone/PipManager$1;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipManager$1;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onActivityPinned()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get3(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMediaController;->onActivityPinned()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onActivityPinned()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->onActivityPinned(Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->stopMicroScreenService(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/pip/phone/PipManager$1;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipManager;->-get0(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;

    move-result-object v3

    .line 101
    invoke-static {v2, v3}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 103
    .local v0, "topPipActivity":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/pip/phone/PipNotificationController;->onActivityUnpinned(Landroid/content/ComponentName;)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    .line 107
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 2
    .param p1, "clearedTask"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipManager$1;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    .line 131
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onPinnedStackAnimationEnded()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onPinnedStackAnimationEnded()V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipNotificationController;->onPinnedStackAnimationEnded()V

    .line 122
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 113
    return-void
.end method
