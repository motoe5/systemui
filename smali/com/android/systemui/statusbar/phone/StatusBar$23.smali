.class Lcom/android/systemui/statusbar/phone/StatusBar$23;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 6383
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6387
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6389
    .local v1, "userId":I
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6390
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$23;->getSendingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v2

    .line 6389
    if-eqz v2, :cond_1

    .line 6391
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6392
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 6399
    :cond_0
    :goto_0
    return-void

    .line 6394
    :cond_1
    const-string/jumbo v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6395
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6396
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWorkChallengeChanged()V

    goto :goto_0
.end method
