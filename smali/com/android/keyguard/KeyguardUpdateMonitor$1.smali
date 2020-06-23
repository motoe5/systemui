.class Lcom/android/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 413
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 418
    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap20(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 421
    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap2(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 424
    :sswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v1, v2, v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap19(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 427
    :sswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    .line 430
    :sswitch_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :sswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    .line 436
    :sswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    .line 439
    :sswitch_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 442
    :sswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    goto :goto_0

    .line 445
    :sswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap14(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 448
    :sswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap13(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 451
    :sswitch_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_0

    .line 454
    :sswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap21(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 457
    :sswitch_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap15(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 460
    :sswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    goto :goto_0

    .line 463
    :sswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    goto/16 :goto_0

    .line 466
    :sswitch_10
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    .line 468
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 471
    :sswitch_11
    const-string/jumbo v2, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap5(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    .line 473
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    .line 472
    goto :goto_1

    .line 477
    :sswitch_12
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap4(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 481
    :sswitch_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    goto/16 :goto_0

    .line 484
    :sswitch_14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 487
    :sswitch_15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap18(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/telephony/ServiceState;)V

    goto/16 :goto_0

    .line 490
    :sswitch_16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap17(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 493
    :sswitch_17
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap16(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 495
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 498
    :sswitch_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap3(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 501
    :sswitch_19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap22(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 505
    :sswitch_1a
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v3, "fingerprint"

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_2

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 508
    :sswitch_1b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v3, "backup"

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_3

    :goto_4
    invoke-static {v2, v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    .line 512
    :sswitch_1c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
        0x132 -> :sswitch_4
        0x134 -> :sswitch_5
        0x135 -> :sswitch_6
        0x136 -> :sswitch_7
        0x138 -> :sswitch_9
        0x139 -> :sswitch_b
        0x13a -> :sswitch_8
        0x13d -> :sswitch_c
        0x13e -> :sswitch_d
        0x13f -> :sswitch_10
        0x140 -> :sswitch_f
        0x141 -> :sswitch_e
        0x142 -> :sswitch_a
        0x147 -> :sswitch_11
        0x148 -> :sswitch_13
        0x149 -> :sswitch_14
        0x14a -> :sswitch_15
        0x14b -> :sswitch_16
        0x14c -> :sswitch_17
        0x14d -> :sswitch_18
        0x14e -> :sswitch_19
        0x150 -> :sswitch_1c
        0x19a -> :sswitch_1a
        0x19b -> :sswitch_1b
        0x19c -> :sswitch_12
    .end sparse-switch
.end method
