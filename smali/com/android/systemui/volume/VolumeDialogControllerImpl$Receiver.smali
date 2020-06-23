.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p2, "-this1"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 808
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 809
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get2(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 819
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v10, -0x1

    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 829
    .local v1, "changed":Z
    const-string/jumbo v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 830
    const-string/jumbo v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 831
    .local v8, "stream":I
    const-string/jumbo v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 833
    .local v3, "level":I
    const-string/jumbo v9, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 832
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 834
    .local v6, "oldLevel":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive VOLUME_CHANGED_ACTION stream="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 835
    const-string/jumbo v11, " level="

    .line 834
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 835
    const-string/jumbo v11, " oldLevel="

    .line 834
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9, v8, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap6(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)Z

    move-result v1

    .line 877
    .end local v1    # "changed":Z
    .end local v3    # "level":I
    .end local v6    # "oldLevel":I
    .end local v8    # "stream":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 878
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get7(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 880
    :cond_2
    return-void

    .line 837
    .restart local v1    # "changed":Z
    :cond_3
    const-string/jumbo v9, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 838
    const-string/jumbo v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 840
    .restart local v8    # "stream":I
    const-string/jumbo v9, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 839
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 842
    .local v2, "devices":I
    const-string/jumbo v9, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 841
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 843
    .local v5, "oldDevices":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive STREAM_DEVICES_CHANGED_ACTION stream="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 844
    const-string/jumbo v11, " devices="

    .line 843
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 844
    const-string/jumbo v11, " oldDevices="

    .line 843
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap0(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v1

    .line 846
    .local v1, "changed":Z
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9, v8, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)Z

    move-result v9

    or-int/2addr v1, v9

    goto :goto_0

    .line 847
    .end local v2    # "devices":I
    .end local v5    # "oldDevices":I
    .end local v8    # "stream":I
    .local v1, "changed":Z
    :cond_5
    const-string/jumbo v9, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 848
    const-string/jumbo v9, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 849
    .local v7, "rm":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 850
    invoke-static {v7}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v11

    .line 849
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9, v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap4(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v1

    .local v1, "changed":Z
    goto/16 :goto_0

    .line 852
    .end local v7    # "rm":I
    .local v1, "changed":Z
    :cond_7
    const-string/jumbo v9, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 853
    const-string/jumbo v9, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 854
    .restart local v7    # "rm":I
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 855
    invoke-static {v7}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v11

    .line 854
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9, v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap5(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v1

    .local v1, "changed":Z
    goto/16 :goto_0

    .line 857
    .end local v7    # "rm":I
    .local v1, "changed":Z
    :cond_9
    const-string/jumbo v9, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 858
    const-string/jumbo v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 860
    .restart local v8    # "stream":I
    const-string/jumbo v9, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 859
    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 861
    .local v4, "muted":Z
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 862
    const-string/jumbo v11, " muted="

    .line 861
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9, v8, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap7(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)Z

    move-result v1

    .local v1, "changed":Z
    goto/16 :goto_0

    .line 864
    .end local v4    # "muted":Z
    .end local v8    # "stream":I
    .local v1, "changed":Z
    :cond_b
    const-string/jumbo v9, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 865
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_c
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/app/NotificationManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/ComponentName;)Z

    move-result v1

    .local v1, "changed":Z
    goto/16 :goto_0

    .line 867
    .local v1, "changed":Z
    :cond_d
    const-string/jumbo v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 868
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "onReceive ACTION_CONFIGURATION_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_e
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto/16 :goto_0

    .line 870
    :cond_f
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 871
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_10

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "onReceive ACTION_SCREEN_OFF"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_10
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onScreenOff()V

    goto/16 :goto_0

    .line 873
    :cond_11
    const-string/jumbo v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 874
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_12

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_12
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->dismiss()V

    goto/16 :goto_0
.end method
