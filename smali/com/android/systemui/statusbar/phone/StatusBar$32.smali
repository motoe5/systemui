.class Lcom/android/systemui/statusbar/phone/StatusBar$32;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar$32_80261(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method

.method public onRemoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1740
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$14;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$14;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1751
    const-wide/16 v2, 0xc8

    .line 1747
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
