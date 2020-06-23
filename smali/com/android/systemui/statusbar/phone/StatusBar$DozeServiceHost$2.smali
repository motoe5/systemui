.class Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field final synthetic val$callback:Lcom/android/systemui/doze/IDozeHostPulseCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Lcom/android/systemui/doze/IDozeHostPulseCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->val$callback:Lcom/android/systemui/doze/IDozeHostPulseCallback;

    .line 5846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private setPulsing(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pulsing":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPulsing(Ljava/util/Collection;)V

    .line 5875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPulsing(Z)V

    .line 5876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPulsing(Z)V

    .line 5877
    return-void

    :cond_0
    move v0, v2

    .line 5875
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5876
    goto :goto_1
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 3

    .prologue
    .line 5866
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->val$callback:Lcom/android/systemui/doze/IDozeHostPulseCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHostPulseCallback;->onPulseFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5870
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->setPulsing(Ljava/util/Collection;)V

    .line 5871
    return-void

    .line 5867
    :catch_0
    move-exception v0

    .line 5868
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPulseStarted()V
    .locals 4

    .prologue
    .line 5850
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->val$callback:Lcom/android/systemui/doze/IDozeHostPulseCallback;

    invoke-interface {v2}, Lcom/android/systemui/doze/IDozeHostPulseCallback;->onPulseStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5855
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/Collection;

    move-result-object v1

    .line 5856
    .local v1, "pulsingEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5859
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;->setPulsing(Ljava/util/Collection;)V

    .line 5861
    :cond_0
    return-void

    .line 5851
    .end local v1    # "pulsingEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    :catch_0
    move-exception v0

    .line 5852
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
