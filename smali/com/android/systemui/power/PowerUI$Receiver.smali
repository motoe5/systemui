.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;
    .param p2, "-this1"    # Lcom/android/systemui/power/PowerUI$Receiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->-get4(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    .line 188
    .local v11, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const-string/jumbo v21, "level"

    const/16 v22, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    .line 190
    .local v12, "oldBatteryStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const-string/jumbo v21, "status"

    .line 191
    const/16 v22, 0x1

    .line 190
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)I

    move-result v16

    .line 195
    .local v16, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const-string/jumbo v21, "plugged_raw"

    .line 196
    const-string/jumbo v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 195
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-set5(Lcom/android/systemui/power/PowerUI;I)I

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    .line 199
    .local v15, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const-string/jumbo v21, "invalid_charger"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;I)I

    .line 202
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v6, "i":Landroid/content/Intent;
    const-string/jumbo v20, "com.motorola.intent.action.SHOW_INDUCTIVE_CHARGE_UI"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 210
    sget-boolean v20, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v20, :cond_0

    const-string/jumbo v20, "PowerUI"

    const-string/jumbo v21, "start inductive charge ui"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v6    # "i":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    if-eqz v20, :cond_3

    const/16 v19, 0x1

    .line 215
    .local v19, "plugged":Z
    :goto_0
    if-eqz v16, :cond_4

    const/16 v17, 0x1

    .line 217
    .local v17, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v13

    .line 218
    .local v13, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 221
    .local v5, "bucket":I
    if-eqz v19, :cond_1

    xor-int/lit8 v20, v17, 0x1

    if-eqz v20, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;I)I

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v14

    .line 226
    .local v14, "oldChargeRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const-string/jumbo v21, "charge_rate"

    .line 227
    const/16 v22, 0x0

    .line 226
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    .line 230
    sget-boolean v20, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v20, :cond_2

    .line 231
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "buckets   ....."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 232
    const-string/jumbo v22, " .. "

    .line 231
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get7(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v22

    const/16 v23, 0x0

    aget v22, v22, v23

    .line 231
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 233
    const-string/jumbo v22, " .. "

    .line 231
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get7(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v22

    const/16 v23, 0x1

    aget v22, v22, v23

    .line 231
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "level          "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "status         "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "plugType       "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "invalidCharger "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "bucket         "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "plugged        "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "chargeRate     "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --> "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/power/PowerUI;->-get10(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJ)V

    .line 245
    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    if-eqz v20, :cond_5

    .line 246
    const-string/jumbo v20, "PowerUI"

    const-string/jumbo v21, "showing invalid charger warning"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 248
    return-void

    .line 214
    .end local v5    # "bucket":I
    .end local v13    # "oldBucket":I
    .end local v14    # "oldChargeRate":I
    .end local v17    # "oldPlugged":Z
    .end local v19    # "plugged":Z
    :cond_3
    const/16 v19, 0x0

    .restart local v19    # "plugged":Z
    goto/16 :goto_0

    .line 215
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "oldPlugged":Z
    goto/16 :goto_1

    .line 249
    .restart local v5    # "bucket":I
    .restart local v13    # "oldBucket":I
    .restart local v14    # "oldChargeRate":I
    :cond_5
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    if-nez v20, :cond_f

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 256
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v9

    .line 257
    .local v9, "isPowerSaver":Z
    if-nez v19, :cond_11

    .line 258
    xor-int/lit8 v20, v9, 0x1

    .line 257
    if-eqz v20, :cond_11

    .line 259
    if-lt v5, v13, :cond_7

    .line 257
    if-eqz v17, :cond_11

    .line 260
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    .line 261
    if-gez v5, :cond_11

    .line 264
    if-ne v5, v13, :cond_10

    move/from16 v18, v17

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    .line 273
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get11(Lcom/android/systemui/power/PowerUI;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v14, :cond_9

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWeakChargerWarning()V

    .line 282
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v14, :cond_a

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showTurboChargerToast(Z)V

    .line 294
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    const/4 v7, 0x1

    .line 296
    .local v7, "isAcPluggedIn":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_17

    :cond_b
    const/4 v8, 0x1

    .line 299
    .local v8, "isCharged":Z
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/motorola/settingslib/ModUtils;->getModBatteryLevel(Landroid/content/Intent;)I

    move-result v10

    .line 300
    .local v10, "modLevel":I
    if-eqz v8, :cond_18

    if-ltz v10, :cond_c

    const/16 v20, 0x64

    move/from16 v0, v20

    if-lt v10, v0, :cond_18

    :cond_c
    const/4 v8, 0x1

    .line 302
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    if-eqz v7, :cond_19

    .end local v8    # "isCharged":Z
    :goto_9
    move-object/from16 v0, v20

    iput-boolean v8, v0, Lcom/android/systemui/power/PowerUI;->mAcFullCharged:Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mAcFullCharged:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mAcFullChargeNotified:Z

    .line 307
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mAcFullCharged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mAcFullChargeNotified:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_e

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-wrap1(Lcom/android/systemui/power/PowerUI;)V

    .line 325
    .end local v5    # "bucket":I
    .end local v7    # "isAcPluggedIn":Z
    .end local v9    # "isPowerSaver":Z
    .end local v10    # "modLevel":I
    .end local v11    # "oldBatteryLevel":I
    .end local v12    # "oldBatteryStatus":I
    .end local v13    # "oldBucket":I
    .end local v14    # "oldChargeRate":I
    .end local v15    # "oldInvalidCharger":I
    .end local v16    # "oldPlugType":I
    .end local v17    # "oldPlugged":Z
    .end local v19    # "plugged":Z
    :cond_e
    :goto_a
    return-void

    .line 251
    .restart local v5    # "bucket":I
    .restart local v11    # "oldBatteryLevel":I
    .restart local v12    # "oldBatteryStatus":I
    .restart local v13    # "oldBucket":I
    .restart local v14    # "oldChargeRate":I
    .restart local v15    # "oldInvalidCharger":I
    .restart local v16    # "oldPlugType":I
    .restart local v17    # "oldPlugged":Z
    .restart local v19    # "plugged":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 253
    return-void

    .line 264
    .restart local v9    # "isPowerSaver":Z
    :cond_10
    const/16 v18, 0x1

    .local v18, "playSound":Z
    goto/16 :goto_2

    .line 266
    .end local v18    # "playSound":Z
    :cond_11
    if-nez v9, :cond_12

    if-nez v19, :cond_12

    if-le v5, v13, :cond_13

    if-lez v5, :cond_13

    .line 267
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    .line 268
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    move/from16 v0, v20

    if-eq v11, v0, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto/16 :goto_3

    .line 276
    :cond_14
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_9

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWeakChargerWarning()V

    goto/16 :goto_4

    .line 285
    :cond_15
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v14, v0, :cond_a

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showTurboChargerToast(Z)V

    goto/16 :goto_5

    .line 294
    :cond_16
    const/4 v7, 0x0

    .restart local v7    # "isAcPluggedIn":Z
    goto/16 :goto_6

    .line 296
    :cond_17
    const/4 v8, 0x0

    .restart local v8    # "isCharged":Z
    goto/16 :goto_7

    .line 300
    .restart local v10    # "modLevel":I
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 302
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 311
    .end local v5    # "bucket":I
    .end local v7    # "isAcPluggedIn":Z
    .end local v8    # "isCharged":Z
    .end local v9    # "isPowerSaver":Z
    .end local v10    # "modLevel":I
    .end local v11    # "oldBatteryLevel":I
    .end local v12    # "oldBatteryStatus":I
    .end local v13    # "oldBucket":I
    .end local v14    # "oldChargeRate":I
    .end local v15    # "oldInvalidCharger":I
    .end local v16    # "oldPlugType":I
    .end local v17    # "oldPlugged":Z
    .end local v19    # "plugged":Z
    :cond_1a
    const-string/jumbo v20, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->-set6(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_a

    .line 313
    :cond_1b
    const-string/jumbo v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->-set6(Lcom/android/systemui/power/PowerUI;J)J

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mAcFullCharged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-wrap1(Lcom/android/systemui/power/PowerUI;)V

    goto/16 :goto_a

    .line 320
    :cond_1c
    const-string/jumbo v20, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    goto/16 :goto_a

    .line 323
    :cond_1d
    const-string/jumbo v20, "PowerUI"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "unknown intent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method
