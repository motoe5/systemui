.class Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    .line 7262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 7265
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7268
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7269
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsClickedNotification(Landroid/view/View;Z)V

    .line 7274
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 7276
    :cond_1
    const/4 v0, 0x0

    .line 7277
    .local v0, "parentToCancel":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7278
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 7280
    .local v2, "summarySbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7281
    move-object v0, v2

    .line 7284
    .end local v0    # "parentToCancel":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    :cond_2
    move-object v1, v0

    .line 7285
    .local v1, "parentToCancelFinal":Landroid/service/notification/StatusBarNotification;
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->start()V

    .line 7360
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 7362
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 7364
    return v6
.end method
