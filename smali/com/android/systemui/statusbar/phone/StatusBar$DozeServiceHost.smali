.class final Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;
    }
.end annotation


# instance fields
.field private mAnimateWakeup:Z

.field private mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

.field private mCallbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsWakingUpFromDozing:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Lcom/android/systemui/doze/IDozeHostCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateWakeup()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 5682
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    .line 5685
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 5682
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldAnimateWakeup()Z
    .locals 2

    .prologue
    .line 5945
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: shouldAnimateWakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5946
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    return v0
.end method


# virtual methods
.method public abortPulsing()V
    .locals 2

    .prologue
    .line 5928
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: abortPulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortPulsing()V

    .line 5930
    return-void
.end method

.method public addCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 5790
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: addCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5791
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    .line 5793
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-eqz v1, :cond_0

    .line 5795
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5801
    :cond_0
    :goto_0
    return-void

    .line 5796
    :catch_0
    move-exception v0

    .line 5797
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dozeTimeTick()V
    .locals 2

    .prologue
    .line 5895
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: dozeTimeTick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 5897
    return-void
.end method

.method public extendPulse()V
    .locals 2

    .prologue
    .line 5934
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: extendPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    .line 5936
    return-void
.end method

.method public fireNotificationHeadsUp()V
    .locals 3

    .prologue
    .line 5716
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: fireNotificationHeadsUp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5719
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostCallback;->onNewNotifications()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5724
    :goto_0
    return-void

    .line 5720
    :catch_0
    move-exception v0

    .line 5721
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public firePowerSaveChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 5704
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: firePowerSaveChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5707
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/doze/IDozeHostCallback;->onPowerSaveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5712
    :goto_0
    return-void

    .line 5708
    :catch_0
    move-exception v0

    .line 5709
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fireWakeUpDozing()V
    .locals 3

    .prologue
    .line 5728
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: fireWakeUpDozing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5730
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIsWakingUpFromDozing:Z

    .line 5732
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostCallback;->wakeUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5736
    :goto_0
    return-void

    .line 5733
    :catch_0
    move-exception v0

    .line 5734
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNotificationLightOn()Z
    .locals 2

    .prologue
    .line 5908
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: isNotificationLightOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    const/4 v0, 0x0

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 2

    .prologue
    .line 5901
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: isPowerSaveActive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get0(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    return v0
.end method

.method public isPulsingBlocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5915
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: isPulsingBlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFpsError(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 5765
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: notifyFpsError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5766
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5768
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/doze/IDozeHostCallback;->notifyFpsError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5772
    :goto_0
    return-void

    .line 5769
    :catch_0
    move-exception v0

    .line 5770
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyFpsHelp(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 5777
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: notifyFpsHelp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5780
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/doze/IDozeHostCallback;->notifyFpsHelp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5784
    :goto_0
    return-void

    .line 5781
    :catch_0
    move-exception v0

    .line 5782
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyFpsUnlock()V
    .locals 3

    .prologue
    .line 5753
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: notifyFpsUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5756
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostCallback;->notifyFpsUnlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5760
    :goto_0
    return-void

    .line 5757
    :catch_0
    move-exception v0

    .line 5758
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyPowerKeyWakeup()V
    .locals 3

    .prologue
    .line 5741
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: notifyPowerKeyWakeup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_0

    return-void

    .line 5744
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostCallback;->notifyPowerKeyWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5748
    :goto_0
    return-void

    .line 5745
    :catch_0
    move-exception v0

    .line 5746
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostPulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 5841
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DozeServiceHost: pulseWhileDozing - reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5844
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-eqz v0, :cond_0

    return-void

    .line 5846
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Lcom/android/systemui/doze/IDozeHostPulseCallback;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    .line 5879
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    const/4 v3, 0x0

    .line 5807
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: removeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/IDozeHostCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5814
    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    .line 5815
    return-void
.end method

.method public setAnimateWakeup(Z)V
    .locals 2
    .param p1, "animateWakeup"    # Z

    .prologue
    .line 5940
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: setAnimateWakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    .line 5942
    return-void
.end method

.method public startDozing()V
    .locals 3

    .prologue
    .line 5820
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "DozeServiceHost: startDozing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set0(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 5823
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 5824
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap13(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5828
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIsWakingUpFromDozing:Z

    .line 5829
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    if-nez v1, :cond_1

    return-void

    .line 5831
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostCallback;->onDozeStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5836
    :goto_0
    return-void

    .line 5832
    :catch_0
    move-exception v0

    .line 5833
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5883
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "DozeServiceHost: stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5885
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIsWakingUpFromDozing:Z

    .line 5887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set0(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 5888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 5889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap13(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5891
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PSB.DozeServiceHost[mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallback:Lcom/android/systemui/doze/IDozeHostCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
