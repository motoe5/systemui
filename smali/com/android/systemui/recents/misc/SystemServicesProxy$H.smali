.class final Lcom/android/systemui/recents/misc/SystemServicesProxy$H;
.super Landroid/os/Handler;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "-this1"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$H;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1406
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1407
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 1483
    return-void

    .line 1409
    :pswitch_0
    :try_start_1
    const-string/jumbo v1, "onTaskStackChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1411
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskStackChanged()V

    .line 1410
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1413
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1406
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 1417
    :pswitch_1
    :try_start_2
    const-string/jumbo v1, "onTaskSnapshotChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 1419
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1420
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityManager$TaskSnapshot;

    .line 1419
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 1418
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1422
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1426
    .end local v0    # "i":I
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityPinned(Ljava/lang/String;I)V

    .line 1426
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1432
    .end local v0    # "i":I
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_0

    .line 1433
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityUnpinned()V

    .line 1432
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1438
    .end local v0    # "i":I
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_5
    if-ltz v0, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 1440
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 1439
    :goto_6
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    .line 1438
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_3
    move v2, v3

    .line 1440
    goto :goto_6

    .line 1445
    .end local v0    # "i":I
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_7
    if-ltz v0, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedStackAnimationStarted()V

    .line 1445
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1451
    .end local v0    # "i":I
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_8
    if-ltz v0, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onPinnedStackAnimationEnded()V

    .line 1451
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1457
    .end local v0    # "i":I
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_9
    if-ltz v0, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 1459
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1458
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 1457
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1464
    .end local v0    # "i":I
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_a
    if-ltz v0, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityDismissingDockedStack()V

    .line 1464
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1470
    .end local v0    # "i":I
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_b
    if-ltz v0, :cond_0

    .line 1471
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    .line 1470
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1476
    .end local v0    # "i":I
    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_c
    if-ltz v0, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;->onTaskProfileLocked(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1476
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method
