.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 834
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFingerprintRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 868
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 848
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 863
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 858
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 853
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 843
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 873
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 838
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    .line 880
    return-void
.end method
