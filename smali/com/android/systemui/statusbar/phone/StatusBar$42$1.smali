.class Lcom/android/systemui/statusbar/phone/StatusBar$42$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$42;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$42;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$42;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$42;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5218
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$42$1$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$42$1;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 5226
    .local v0, "finishScrollingCallback":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5228
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$42$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    .line 5234
    :goto_0
    return-void

    .line 5232
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
