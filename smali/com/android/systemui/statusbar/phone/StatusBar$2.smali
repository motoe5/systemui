.class Lcom/android/systemui/statusbar/phone/StatusBar$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 557
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    .line 561
    .local v0, "wasUsing":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisableNotificationAlerts:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "heads_up_notifications_enabled"

    .line 562
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 561
    :goto_0
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eqz v4, :cond_0

    .line 566
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ticker_gets_heads_up"

    .line 565
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpTicker:Z

    .line 567
    const-string/jumbo v2, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "heads up is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-eq v0, v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUseHeadsUp:Z

    if-nez v1, :cond_1

    .line 570
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 574
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 562
    goto :goto_0

    :cond_3
    move v1, v3

    .line 561
    goto :goto_0

    .line 567
    :cond_4
    const-string/jumbo v1, "disabled"

    goto :goto_1
.end method
