.class Lcom/android/systemui/doze/DozeTriggers$1;
.super Lcom/android/systemui/doze/IDozeHostCallback$Stub;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public notifyFpsError(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 408
    return-void
.end method

.method public notifyFpsHelp(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 403
    return-void
.end method

.method public notifyFpsUnlock()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public notifyPowerKeyWakeup()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public onBuzzBeepBlinked()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onDozeStarted()V
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/android/systemui/doze/DozeTriggers;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "onDozeStarted from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get4(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 372
    return-void
.end method

.method public onNewNotifications()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public onNotificationHeadsUp()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-wrap2(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 358
    return-void
.end method

.method public onNotificationLight(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 393
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-wrap3(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 365
    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lcom/android/systemui/doze/DozeTriggers;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "wakeUp from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get4(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 378
    return-void
.end method
