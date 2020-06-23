.class Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;
    .param p2, "-this1"    # Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string/jumbo v0, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeTriggers"

    const-string/jumbo v1, "Received pulse intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0, v2, v2}, Lcom/android/systemui/doze/DozeTriggers;->-wrap4(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    .line 325
    :cond_1
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-wrap1(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 328
    :cond_2
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->-get2(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->onUserSwitched()V

    .line 331
    :cond_3
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    .line 342
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->mRegistered:Z

    .line 350
    return-void
.end method
