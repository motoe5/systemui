.class Lcom/android/systemui/statusbar/phone/StatusBar$25;
.super Landroid/app/UserSwitchObserver;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 7829
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar$25_333266(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 7832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userSwitched(I)V

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
    .line 7832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$24;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$24;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 7833
    return-void
.end method
