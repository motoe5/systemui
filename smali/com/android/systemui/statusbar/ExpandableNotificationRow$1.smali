.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 184
    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 188
    .local v1, "wasExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 189
    .local v0, "nowExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x198

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-wrap0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V

    .line 210
    .end local v1    # "wasExpanded":Z
    :goto_0
    return-void

    .line 194
    .end local v0    # "nowExpanded":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setFocusOnVisibilityChange()V

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 200
    .restart local v0    # "nowExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x197

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 202
    .end local v0    # "nowExpanded":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 203
    .restart local v0    # "nowExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    goto :goto_1
.end method
