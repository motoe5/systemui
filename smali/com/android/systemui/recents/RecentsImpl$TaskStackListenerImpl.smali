.class Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "RecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImpl;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 180
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 181
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 182
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 184
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 194
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 195
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;

    .line 205
    invoke-static {p2}, Lcom/android/systemui/recents/model/ThumbnailData;->createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v2

    .line 204
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;-><init>(ILcom/android/systemui/recents/model/ThumbnailData;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 206
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 15

    .prologue
    const/4 v8, -0x1

    const/4 v14, 0x1

    const/4 v10, 0x0

    .line 126
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v9, v9, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 127
    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 132
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v9, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v9, :cond_2

    .line 135
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    .line 136
    .local v6, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 137
    .local v5, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 138
    .local v3, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v9, v9, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 139
    .local v4, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v3, v4, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 145
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v9, v9, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v9

    .line 146
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    .line 147
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 148
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    .line 149
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/systemui/recents/RecentsImpl;->-wrap0(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 148
    invoke-static {v10, v11, v12}, Lcom/android/systemui/recents/RecentsImpl;->-wrap1(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 153
    new-instance v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v2}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    .line 154
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 155
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(ZLcom/android/systemui/recents/RecentsActivityLaunchState;)V

    .line 156
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "visibilityReport":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    monitor-exit v9

    .line 159
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 160
    .local v1, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    if-eqz v5, :cond_1

    iget v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :cond_1
    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 161
    iget v8, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 162
    iget v8, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 163
    iput-boolean v14, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 164
    iput-boolean v14, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 165
    iput-boolean v14, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 166
    iget-object v8, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v4, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 168
    .end local v1    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v2    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v3    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v4    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .end local v5    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v7    # "visibilityReport":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    :cond_2
    return-void

    .line 145
    .restart local v3    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v4    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .restart local v5    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
