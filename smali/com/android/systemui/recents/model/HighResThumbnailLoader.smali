.class public Lcom/android/systemui/recents/model/HighResThumbnailLoader;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;
    }
.end annotation


# instance fields
.field private mFlingingFast:Z

.field private final mLoadQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadThread:Ljava/lang/Thread;

.field private final mLoader:Ljava/lang/Runnable;

.field private mLoaderIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation
.end field

.field private mLoading:Z

.field private final mLoadingTasks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTaskLoadQueueIdle:Z

.field private mVisible:Z

.field private final mVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/os/Looper;)V
    .locals 3
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;-><init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    const-string/jumbo v2, "Recents-HighResThumbnailLoader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 60
    return-void
.end method

.method private setLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-ne p1, v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 98
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    .line 99
    if-nez p1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 105
    return-void

    .line 102
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->startLoading()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startLoading()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 110
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 111
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v2, :cond_1

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 111
    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 111
    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->notifyAll()V

    .line 117
    return-void
.end method

.method private stopLoading()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->notifyAll()V

    .line 123
    return-void
.end method

.method private updateLoading()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setLoading(Z)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isLoading()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    .line 168
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 173
    :cond_0
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTaskDataUnloaded()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onTaskInvisible(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 147
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 152
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTaskStackIdChanged()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onTaskVisible(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 132
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 140
    :cond_1
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFlingingFast(Z)V
    .locals 1
    .param p1, "flingingFast"    # Z

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-ne v0, p1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 73
    return-void
.end method

.method public setTaskLoadQueueIdle(Z)V
    .locals 0
    .param p1, "idle"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 82
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mVisible:Z

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 65
    return-void
.end method

.method waitForLoaderIdle()V
    .locals 2

    .prologue
    .line 157
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 159
    return-void

    :cond_0
    monitor-exit v1

    .line 162
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
