.class Lcom/android/systemui/statusbar/phone/StatusBar$24;
.super Landroid/service/notification/NotificationListenerService;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 6403
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .prologue
    .line 6407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$24;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 6408
    .local v1, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v1, :cond_0

    .line 6409
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "onListenerConnected unable to get active notifications."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6410
    return-void

    .line 6412
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$24;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 6413
    .local v0, "currentRanking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$24$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$24$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$24;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 6425
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 6431
    if-eqz p1, :cond_0

    .line 6432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$24$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$24$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$24;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 6469
    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 6489
    if-eqz p1, :cond_0

    .line 6490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$24$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$24$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$24;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 6496
    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 6475
    if-eqz p1, :cond_0

    .line 6476
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 6477
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$24$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$24$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$24;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 6484
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
