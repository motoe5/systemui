.class Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1589
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1592
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1685
    :goto_0
    return-void

    .line 1594
    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1597
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1600
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1603
    :sswitch_3
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1604
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1605
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1608
    :sswitch_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1611
    :sswitch_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1614
    :sswitch_6
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1615
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1616
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1619
    :sswitch_7
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1620
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1621
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1624
    :sswitch_8
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1627
    :sswitch_9
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1628
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1629
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1632
    :sswitch_a
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1633
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1634
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1637
    :sswitch_b
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1638
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1639
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 1642
    :sswitch_c
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1643
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_1

    :goto_2
    invoke-static {v4, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1644
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_0
    move v1, v3

    .line 1643
    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    .line 1647
    :sswitch_d
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 1648
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto/16 :goto_0

    .line 1647
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1652
    :sswitch_e
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap4(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    goto/16 :goto_0

    .line 1655
    :sswitch_f
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1657
    .local v0, "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    .line 1658
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onSucccessfulUnlock()V

    .line 1659
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 1662
    .end local v0    # "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :sswitch_10
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1663
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Timeout while waiting for activity drawn!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 1667
    :sswitch_11
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage SET_SWITCHING_USER"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1668
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    .line 1669
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 1668
    goto :goto_3

    .line 1673
    :sswitch_12
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    move v4, v2

    :goto_4
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_4

    :goto_5
    invoke-static {v5, v1, v4, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/IBinder;ZZ)V

    goto/16 :goto_0

    :cond_3
    move v4, v3

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_5

    .line 1678
    :sswitch_13
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Timeout waiting to start keygaurd exit animation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1681
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    .line 1679
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    goto/16 :goto_0

    .line 1592
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xc -> :sswitch_f
        0xd -> :sswitch_10
        0xe -> :sswitch_9
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_4
        0x12 -> :sswitch_11
        0x64 -> :sswitch_12
        0x65 -> :sswitch_13
    .end sparse-switch
.end method
