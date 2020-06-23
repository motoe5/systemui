.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1522
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1525
    const-string/jumbo v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1526
    const-string/jumbo v6, "seq"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1527
    .local v4, "sequence":I
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1528
    const-string/jumbo v8, ", mDelayedShowingSequence = "

    .line 1527
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1528
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v8

    .line 1527
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v7

    .line 1530
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1531
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "sequence":I
    :cond_1
    :goto_0
    monitor-exit v7

    .line 1569
    :cond_2
    :goto_1
    return-void

    .line 1529
    .restart local v4    # "sequence":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1534
    .end local v4    # "sequence":I
    :cond_3
    const-string/jumbo v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1535
    const-string/jumbo v6, "seq"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1536
    .restart local v4    # "sequence":I
    const-string/jumbo v6, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1537
    .local v5, "userId":I
    if-eqz v5, :cond_2

    .line 1538
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v7

    .line 1539
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1540
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap20(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1538
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1544
    .end local v4    # "sequence":I
    .end local v5    # "userId":I
    :cond_4
    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1545
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v7

    .line 1546
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1545
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1549
    :cond_5
    const-string/jumbo v6, "com.motorola.internal.policy.impl.REQUEST_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1550
    const-string/jumbo v6, "callback"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1551
    .local v0, "callback":Landroid/os/IBinder;
    const-string/jumbo v6, "dismiss"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1557
    .local v2, "dismiss":Z
    const-string/jumbo v6, "collapse"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1560
    .local v1, "collapsePanels":Z
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "received REQUEST_UNLOCK_ACTION.equals dismiss = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1561
    const-string/jumbo v10, ", collapse = "

    .line 1560
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v6

    const/16 v9, 0x64

    invoke-virtual {v6, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1564
    .local v3, "msg":Landroid/os/Message;
    if-eqz v2, :cond_7

    move v6, v7

    :goto_2
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 1565
    if-eqz v1, :cond_8

    :goto_3
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 1566
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_7
    move v6, v8

    .line 1564
    goto :goto_2

    :cond_8
    move v7, v8

    .line 1565
    goto :goto_3
.end method
