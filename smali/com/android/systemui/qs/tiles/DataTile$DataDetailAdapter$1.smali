.class Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;
.super Ljava/lang/Object;
.source "DataTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private startDDSUpdaterService(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 252
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 254
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-eq p2, v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-virtual {v3, v2, p2}, Lcom/android/systemui/qs/tiles/DataTile;->isSimReadyForSubId(Landroid/telephony/SubscriptionManager;I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 254
    if-eqz v3, :cond_1

    .line 255
    :cond_0
    return-void

    .line 257
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.motorola.intent.action.DDS_DATA_SWITCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.motorola.settings.sim.DDSUpdaterService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v3, "subscription"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method


# virtual methods
.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 231
    instance-of v1, p1, Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    .line 234
    .local v0, "dataItem":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    sget-boolean v1, Lcom/android/systemui/qs/tiles/DataTile;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 235
    const-string/jumbo v1, "DataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDetailItemClick slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->slotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    const-string/jumbo v3, " active = "

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->active:Z

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v3, " isValid = "

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->active:Z

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataTile;->-get1(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSubId:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;->startDDSUpdaterService(Landroid/content/Context;I)V

    .line 244
    .end local v0    # "dataItem":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_1
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 248
    return-void
.end method
