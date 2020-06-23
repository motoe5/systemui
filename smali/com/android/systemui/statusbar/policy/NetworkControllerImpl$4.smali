.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1019
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1022
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1024
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCBInfoReceiver: onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    const/4 v3, -0x1

    .line 1029
    .local v3, "subId":I
    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1030
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1031
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1032
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 1033
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v3

    .line 1037
    .end local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1038
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 1039
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    .line 1042
    :cond_2
    return-void
.end method
