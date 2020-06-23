.class final Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "DataTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSignalCallback"
.end annotation


# instance fields
.field public final mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/DataTile;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/DataTile;)V

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 470
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V
    .locals 3
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "typeContentDescription"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isWide"    # Z
    .param p10, "subId"    # I
    .param p11, "roaming"    # Z
    .param p12, "info"    # Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    .prologue
    .line 447
    if-eqz p12, :cond_0

    iget v0, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->enabled:Z

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileSignalIconId:I

    .line 450
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->showSeparatedSignalBars:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->showSeparatedSignalBars:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iput p4, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->dataTypeIconId:I

    .line 452
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    if-lez p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->enabled:Z

    .line 453
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iput-object p8, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileRoamingIconId:I

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iput p10, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobileSubId:I

    .line 456
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->mobilePhoneIndex:I

    .line 458
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get2(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v0

    iget v2, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/moto/SimStates;->isSimAbsent(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->-get2(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v0

    iget v2, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/moto/SimStates;->isSimError(I)Z

    move-result v0

    .line 458
    :goto_1
    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->noSim:Z

    .line 461
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataTile;->-get2(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->isWiFiConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DataTile;->-set1(Lcom/android/systemui/qs/tiles/DataTile;Z)Z

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->updateDataItem(Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    invoke-static {v0, p8}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->-wrap3(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;Ljava/lang/String;)V

    .line 465
    return-void

    .line 452
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setNoSims(Z)V
    .locals 6
    .param p1, "noSims"    # Z

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v2, p1}, Lcom/android/systemui/qs/tiles/DataTile;->-set0(Lcom/android/systemui/qs/tiles/DataTile;Z)Z

    .line 493
    if-eqz p1, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DataTile;->-get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 495
    .local v0, "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->isValid:Z

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .end local v0    # "item":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->-wrap4(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V

    .line 498
    new-instance v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 499
    .local v1, "state":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap2(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    .line 500
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/DataTile;->-wrap1(Lcom/android/systemui/qs/tiles/DataTile;Ljava/lang/Object;)V

    .line 502
    .end local v1    # "state":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    :cond_1
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "wifiInfo"    # Lcom/android/systemui/moto/ExtendedWifiInfo;

    .prologue
    .line 477
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get2(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->isWiFiConnected()Z

    move-result v2

    .line 478
    .local v2, "isWiFiConnected":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DataTile;->-get6(Lcom/android/systemui/qs/tiles/DataTile;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 479
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/DataTile;->-set1(Lcom/android/systemui/qs/tiles/DataTile;Z)Z

    .line 480
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 481
    .local v0, "dataSubId":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DataTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 482
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->-wrap2(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;Ljava/lang/String;)V

    .line 486
    .end local v0    # "dataSubId":I
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-void
.end method
