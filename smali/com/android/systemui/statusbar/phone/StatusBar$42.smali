.class Lcom/android/systemui/statusbar/phone/StatusBar$42;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onWorkChallengeChanged()V
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 5192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5195
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get12(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v1

    .line 5196
    .local v1, "pendingWorkRemoteInputView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 5197
    return-void

    .line 5201
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5202
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v5, :cond_2

    .line 5203
    if-nez v0, :cond_1

    .line 5204
    return-void

    .line 5206
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 5209
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5210
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 5211
    .local v4, "viewParent":Landroid/view/ViewParent;
    instance-of v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 5213
    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 5214
    .local v3, "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->makeActionsVisibile()V

    .line 5215
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$42;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    .line 5237
    .end local v3    # "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    :cond_3
    return-void
.end method
