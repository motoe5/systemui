.class Lcom/android/systemui/statusbar/phone/StatusBar$13;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3907
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3911
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3912
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3913
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 3914
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v4, :cond_0

    .line 3915
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3917
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;->getSendingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3918
    const/4 v1, 0x0

    .line 3919
    .local v1, "flags":I
    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3920
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "recentapps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3921
    const/4 v1, 0x2

    .line 3923
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 3942
    .end local v1    # "flags":I
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 3926
    :cond_3
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3927
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpScreenOff()V

    .line 3928
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap4(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3929
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    goto :goto_0

    .line 3931
    :cond_4
    const-string/jumbo v4, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3932
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get13(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    goto :goto_0

    .line 3935
    :cond_5
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3936
    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3937
    .local v3, "stateExtra":Ljava/lang/String;
    const-string/jumbo v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3938
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    goto :goto_0
.end method
