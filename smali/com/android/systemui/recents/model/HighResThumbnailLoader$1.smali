.class Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/HighResThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private loadTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get4(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 214
    const/4 v3, 0x0

    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v0

    .line 215
    .local v0, "thumbnail":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get3(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/-$Lambda$MQZ2DDGEdYbkc4PYi29vXxoRkJ8;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/model/-$Lambda$MQZ2DDGEdYbkc4PYi29vXxoRkJ8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_model_HighResThumbnailLoader$1_6741(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "thumbnail"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v1

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get2(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get5(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 187
    const/16 v3, 0xb

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 190
    .local v2, "next":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v4

    monitor-enter v4

    .line 191
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get1(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-set0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z

    .line 194
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->wait()V

    .line 195
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-set0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "next":Lcom/android/systemui/recents/model/Task;
    :cond_2
    :goto_1
    monitor-exit v4

    .line 206
    if-eqz v2, :cond_0

    .line 207
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->loadTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0

    .line 200
    .restart local v2    # "next":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    move-object v2, v0

    .line 201
    .local v2, "next":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_2

    .line 202
    iget-object v3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->-get2(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 190
    .end local v2    # "next":Lcom/android/systemui/recents/model/Task;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 196
    .local v2, "next":Lcom/android/systemui/recents/model/Task;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
