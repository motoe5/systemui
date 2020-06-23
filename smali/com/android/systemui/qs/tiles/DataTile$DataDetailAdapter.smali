.class final Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;
.super Ljava/lang/Object;
.source "DataTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;
    }
.end annotation


# instance fields
.field public final DDS_DATA_SWITCH_INTENT:Ljava/lang/String;

.field public final DDS_UPDATER_SERVICE_CLASS_NAME:Ljava/lang/String;

.field public final DDS_UPDATER_SERVICE_PACKAGE_NAME:Ljava/lang/String;

.field public final SUBSCRIPTION_KEY:Ljava/lang/String;

.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataTile;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataItems()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataTileInfo(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataTileInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataTileState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDetailItems()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/DataTile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const-string/jumbo v0, "subscription"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->SUBSCRIPTION_KEY:Ljava/lang/String;

    .line 222
    const-string/jumbo v0, "com.motorola.intent.action.DDS_DATA_SWITCH"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->DDS_DATA_SWITCH_INTENT:Ljava/lang/String;

    .line 223
    const-string/jumbo v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->DDS_UPDATER_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "com.motorola.settings.sim.DDSUpdaterService"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->DDS_UPDATER_SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 228
    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DataTile;)V

    return-void
.end method

.method private getSignalItemForSubInfo(Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/qs/tiles/DataTile$DataItem;)Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .locals 6
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "item"    # Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataTile;->-get3(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataTile;->-get5(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->tag:Ljava/lang/Object;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    const-string/jumbo v5, " (SIM "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    iput-object v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->line1:Ljava/lang/CharSequence;

    .line 363
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 364
    iget-object v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v5, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    iget v5, v5, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->dataConnection:I

    invoke-static {v1, v5}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap0(Lcom/android/systemui/qs/tiles/DataTile;I)Ljava/lang/String;

    move-result-object v1

    .line 363
    :goto_1
    iput-object v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->line2:Ljava/lang/CharSequence;

    .line 365
    iput-object v3, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->overlay:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->slotId:I

    .line 367
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSubId:I

    .line 368
    iput-boolean v4, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    .line 370
    iget v1, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->slotId:I

    invoke-static {v1}, Lcom/motorola/settingslib/SimUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 371
    .local v0, "state":I
    if-ne v0, v4, :cond_0

    move v2, v4

    :cond_0
    iput-boolean v2, p2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->active:Z

    .line 373
    return-object p2

    .end local v0    # "state":I
    :cond_1
    move v1, v2

    .line 358
    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 364
    goto :goto_1
.end method

.method private updateDataItems()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 344
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DataTile;->-get1(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 345
    .local v4, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 346
    .local v3, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v3, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v2, v7, v5

    .line 348
    .local v2, "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    iput-boolean v6, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    .line 347
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 352
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->getSignalItemForSubInfo(Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/qs/tiles/DataTile$DataItem;)Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    goto :goto_1

    .line 354
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return-void
.end method

.method private updateDataTileInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 396
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataTileInfo(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap1(Lcom/android/systemui/qs/tiles/DataTile;Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method private updateDataTileInfo(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 8
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "hasActiveSim":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 405
    .local v2, "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    iget-boolean v7, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->active:Z

    if-eqz v7, :cond_2

    .line 406
    const/4 v0, 0x1

    .line 410
    .end local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_0
    iget-object v3, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 411
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get3(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    .line 412
    .local v1, "isMobileDataEnabled":Z
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get5(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get6(Lcom/android/systemui/qs/tiles/DataTile;)Z

    move-result v3

    if-nez v3, :cond_1

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    :cond_1
    const v3, 0x7f0800d8

    .line 412
    :goto_1
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 416
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get5(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v3, v3, 0x1

    :goto_2
    iput-boolean v3, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 420
    .end local v1    # "isMobileDataEnabled":Z
    :goto_3
    return-void

    .line 404
    .restart local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .restart local v1    # "isMobileDataEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get2(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasInternetConnection()Z

    move-result v3

    if-nez v3, :cond_4

    .line 414
    const v3, 0x7f0800d9

    goto :goto_1

    :cond_4
    const v3, 0x7f0800da

    goto :goto_1

    :cond_5
    const v3, 0x7f0800d7

    goto :goto_1

    :cond_6
    move v3, v4

    .line 416
    goto :goto_2

    .line 418
    .end local v1    # "isMobileDataEnabled":Z
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3, p2}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap2(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    goto :goto_3
.end method

.method private updateDataTileState(Ljava/lang/String;)V
    .locals 4
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 379
    .local v0, "dataSubId":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DataTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 380
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataTileInfo(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v2}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 386
    .local v2, "state":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 387
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap2(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    .line 388
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap1(Lcom/android/systemui/qs/tiles/DataTile;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateDetailItems()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v6, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataItems()V

    .line 324
    const/4 v4, 0x0

    .line 325
    .local v4, "size":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v2, v7, v6

    .line 326
    .local v2, "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    iget-boolean v9, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    if-eqz v9, :cond_1

    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 325
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_2
    new-array v3, v4, [Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    .line 332
    .local v3, "items":[Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    const/4 v0, 0x0

    .line 333
    .local v0, "index":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v6

    array-length v7, v6

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v2, v6, v5

    .line 334
    .restart local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    iget-boolean v8, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    if-eqz v8, :cond_4

    .line 335
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, v3, v1

    .line 337
    :goto_2
    if-lt v0, v4, :cond_3

    .line 339
    .end local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 340
    return-void

    .line 333
    .restart local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    :cond_4
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_2

    .end local v0    # "index":I
    .end local v2    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .restart local v1    # "index":I
    :cond_5
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_3
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 281
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v1, "Data"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f0800d7

    const v2, 0x7f1103d8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDetailItems()V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x6bd3

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/android/systemui/qs/tiles/DataTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    invoke-static {}, Lcom/android/systemui/qs/tiles/DataTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get1(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get3(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get3(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToggleState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get1(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x6bd2

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get3(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 299
    return-void
.end method

.method public updateDataItem(Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobilePhoneIndex:I

    aget-object v0, v1, v2

    .line 309
    .local v0, "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    iget v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileSubId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSubId:I

    .line 310
    iget v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->dataTypeIconId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTypeIconId:I

    .line 311
    iget v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileRoamingIconId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileRoamingIconId:I

    .line 312
    iget v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileSignalIconId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSignalIconId:I

    .line 313
    iget-boolean v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->showSeparatedSignalBars:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->showSeparatedSignalBars:Z

    .line 314
    iget v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileSimIconId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSimIconId:I

    .line 315
    iget-object v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->label:Ljava/lang/String;

    .line 316
    iget-object v1, p1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDetailItems()V

    .line 318
    return-void
.end method
