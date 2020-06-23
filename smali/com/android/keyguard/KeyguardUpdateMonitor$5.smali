.class Lcom/android/keyguard/KeyguardUpdateMonitor$5;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1061
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 1066
    .local v10, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "received broadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    const-string/jumbo v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1069
    const-string/jumbo v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1068
    if-nez v4, :cond_1

    .line 1070
    const-string/jumbo v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1068
    if-eqz v4, :cond_3

    .line 1071
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1139
    :cond_2
    :goto_0
    return-void

    .line 1072
    :cond_3
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1073
    const-string/jumbo v4, "status"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1075
    .local v5, "status":I
    const-string/jumbo v4, "plugged_raw"

    .line 1076
    const-string/jumbo v18, "plugged"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1075
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1078
    .local v7, "plugged":I
    const-string/jumbo v4, "level"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1079
    .local v6, "level":I
    const-string/jumbo v4, "health"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1081
    .local v8, "health":I
    const-string/jumbo v4, "max_charging_current"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1082
    .local v12, "maxChargingMicroAmp":I
    const-string/jumbo v4, "max_charging_voltage"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1085
    .local v13, "maxChargingMicroVolt":I
    if-gtz v13, :cond_4

    .line 1086
    const v13, 0x4c4b40

    .line 1088
    :cond_4
    if-lez v12, :cond_5

    .line 1091
    div-int/lit16 v4, v12, 0x3e8

    .line 1092
    div-int/lit16 v0, v13, 0x3e8

    move/from16 v18, v0

    .line 1091
    mul-int v9, v4, v18

    .line 1096
    .local v9, "maxChargingMicroWatt":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    .line 1097
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIII)V

    const/16 v19, 0x12e

    .line 1096
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1099
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1094
    .end local v9    # "maxChargingMicroWatt":I
    .end local v14    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v9, -0x1

    .restart local v9    # "maxChargingMicroWatt":I
    goto :goto_1

    .line 1100
    .end local v5    # "status":I
    .end local v6    # "level":I
    .end local v7    # "plugged":I
    .end local v8    # "health":I
    .end local v9    # "maxChargingMicroWatt":I
    .end local v12    # "maxChargingMicroAmp":I
    .end local v13    # "maxChargingMicroVolt":I
    :cond_6
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1101
    const-string/jumbo v4, "com.motorola.keyguard.ACTION_SIM_PIN_UNLOCK"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1100
    if-eqz v4, :cond_9

    .line 1102
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v11

    .line 1104
    .local v11, "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const-string/jumbo v4, "rebroadcastOnUnlock"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1108
    return-void

    .line 1116
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget v0, v11, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    move/from16 v18, v0

    iget v0, v11, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v19, v0

    iget-object v0, v11, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1118
    .end local v11    # "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_9
    const-string/jumbo v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    .line 1120
    const-string/jumbo v19, "android.media.EXTRA_RINGER_MODE"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1119
    const/16 v20, 0x131

    .line 1120
    const/16 v21, 0x0

    .line 1119
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1121
    :cond_a
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1122
    const-string/jumbo v4, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1123
    .local v16, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x132

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1124
    .end local v16    # "state":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v18, 0x149

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1126
    :cond_c
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0

    .line 1128
    :cond_d
    const-string/jumbo v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v15

    .line 1130
    .local v15, "serviceState":Landroid/telephony/ServiceState;
    const-string/jumbo v4, "subscription"

    .line 1131
    const/16 v18, -0x1

    .line 1130
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1132
    .local v17, "subId":I
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1133
    const-string/jumbo v4, "KeyguardUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "action "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " serviceState="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " subId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x14a

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 1136
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
