.class Lcom/android/systemui/recents/misc/SystemServicesProxy$2;
.super Landroid/app/TaskStackListener;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 223
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->mTmpListeners:Ljava/util/List;

    .line 1
    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 244
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 4
    .param p1, "clearedTask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void

    :cond_0
    move v0, v1

    .line 258
    goto :goto_0
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 270
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x9

    .line 264
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 230
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->mTmpListeners:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 234
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskStackChangedBackground()V

    .line 234
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 238
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    return-void
.end method
