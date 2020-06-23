.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1873
    const-string/jumbo v3, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1874
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "keyguardGoingAway"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->keyguardGoingAway()V

    .line 1879
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Call PhoneWindowManager\'s keyguardGoingAway, expect PhoneWindowManager to call startKeyguardExitAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1882
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1883
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1886
    const/4 v1, 0x0

    .line 1887
    .local v1, "flags":I
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1888
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get20(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    .line 1887
    if-eqz v3, :cond_2

    .line 1889
    :cond_1
    const/4 v1, 0x2

    .line 1891
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToNotificationShade()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1892
    or-int/lit8 v1, v1, 0x1

    .line 1894
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isUnlockWithWallpaper()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1895
    or-int/lit8 v1, v1, 0x4

    .line 1898
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 1902
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    .end local v1    # "flags":I
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1907
    return-void

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Error while calling WindowManager"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
