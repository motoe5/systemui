.class Lcom/android/systemui/statusbar/phone/StatusBar$24$4;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$24;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$24;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$24;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$24;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$24;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24$4;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 6490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$24;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24$4;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 6494
    return-void
.end method
