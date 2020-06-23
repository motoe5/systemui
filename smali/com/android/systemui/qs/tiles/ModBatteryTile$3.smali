.class Lcom/android/systemui/qs/tiles/ModBatteryTile$3;
.super Landroid/content/BroadcastReceiver;
.source "ModBatteryTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ModBatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .line 476
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 479
    invoke-static {}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ModBatteryTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    if-eqz p2, :cond_1

    .line 482
    const-string/jumbo v0, "com.motorola.mod.action.MOD_ENUMERATION_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap2(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap0(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set0(Lcom/android/systemui/qs/tiles/ModBatteryTile;Landroid/content/Intent;)Landroid/content/Intent;

    .line 485
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get3(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/settingslib/ModUtils;->isChargingMod(Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z

    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get3(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/settingslib/ModUtils;->isSupplemental(Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set7(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z

    .line 487
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get3(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/settingslib/ModUtils;->getModBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set3(Lcom/android/systemui/qs/tiles/ModBatteryTile;I)I

    .line 488
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get8(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get2(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 496
    :cond_1
    :goto_1
    return-void

    .line 488
    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    goto :goto_0

    .line 490
    :cond_3
    const-string/jumbo v0, "com.motorola.mod.action.MOD_DETACH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get2(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get8(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    :goto_2
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    goto :goto_2
.end method
