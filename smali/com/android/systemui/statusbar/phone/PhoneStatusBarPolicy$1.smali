.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 946
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy$1_45989()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy$1_46365(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 955
    return-void
.end method
