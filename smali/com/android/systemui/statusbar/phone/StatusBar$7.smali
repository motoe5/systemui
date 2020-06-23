.class Lcom/android/systemui/statusbar/phone/StatusBar$7;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 701
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 704
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 703
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 706
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 705
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 710
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;J)J

    .line 711
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v6

    .line 721
    .local v6, "mediaKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 722
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 723
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 724
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 725
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    .line 727
    .local v4, "isVisible":Z
    invoke-static {v5, v3, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 728
    .local v8, "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 729
    .local v7, "previouslyVisible":Z
    if-eqz v4, :cond_1

    .line 731
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 732
    if-nez v7, :cond_0

    .line 733
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_1

    .line 740
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "isVisible":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "previouslyVisible":Z
    .end local v8    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 741
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 743
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 744
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 743
    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 746
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap10(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/util/ArraySet;)V

    .line 747
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 749
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap10(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/util/ArraySet;)V

    .line 750
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 751
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 752
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 753
    return-void
.end method
