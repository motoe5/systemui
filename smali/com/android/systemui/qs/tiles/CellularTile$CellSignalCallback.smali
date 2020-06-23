.class final Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSignalCallback"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get3(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    .line 512
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
    .line 404
    if-eqz p2, :cond_0

    if-eqz p12, :cond_1

    iget v0, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get6(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 407
    :cond_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 411
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 413
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 416
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v0, " "

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11031e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    iput-object v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-eqz p4, :cond_4

    .end local p9    # "isWide":Z
    :goto_1
    iput-boolean p9, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    .line 419
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p11, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    .line 422
    if-nez p12, :cond_5

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenWifiActive:Z

    .line 425
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    .line 426
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isMotoWideIcons:Z

    .line 428
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingIconId:I

    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v1, "unknown"

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneLabel:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneDescription:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimDescription:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingDescription:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityDescription:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneIndex:I

    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isRejectCodeEnabled:Z

    .line 441
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showSeparatedSignalBars:Z

    .line 465
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 466
    return-void

    .restart local p9    # "isWide":Z
    :cond_3
    move-object v0, p8

    .line 417
    goto :goto_0

    .line 418
    :cond_4
    const/4 p9, 0x0

    goto :goto_1

    .line 442
    .end local p9    # "isWide":Z
    :cond_5
    iget v0, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get6(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->mobileShowMobileWhenWifiActive:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenWifiActive:Z

    .line 444
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    .line 445
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isMotoWideIcons:Z

    .line 447
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    .line 448
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingIconId:I

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    .line 450
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneLabel:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneDescription:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimDescription:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingDescription:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityDescription:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p10, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    .line 456
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneIndex:I

    .line 457
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v0

    iget v2, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/moto/SimStates;->isSimAbsent(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v0

    iget v2, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/moto/SimStates;->isSimError(I)Z

    move-result v0

    .line 457
    :goto_3
    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget v0, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->rejectCode:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isRejectCodeEnabled:Z

    .line 460
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->showSeparatedSignalBars:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showSeparatedSignalBars:Z

    goto/16 :goto_2

    .line 457
    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 459
    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setNoSims(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 474
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile;->-get6(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/moto/SimStates;->isSimAbsent(I)Z

    move-result v0

    .line 475
    .local v0, "isSimAbsent":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile;->-get6(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/moto/SimStates;->isSimError(I)Z

    move-result v1

    .line 476
    .local v1, "isSimError":Z
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    move v2, v1

    :goto_0
    iput-boolean v2, v4, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 480
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v2, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v5, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 483
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v5, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 484
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v5, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingIconId:I

    .line 486
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean v3, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 488
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->shouldDifferSimError()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 489
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11027b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 490
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const v3, 0x7f080357

    iput v3, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    .line 496
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 497
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCustomizeEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isMotoWideIcons:Z

    .line 498
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean v5, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isRejectCodeEnabled:Z

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 501
    return-void

    :cond_1
    move v2, v3

    .line 476
    goto :goto_0

    .line 492
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11026b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 493
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v5, v2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    goto :goto_1
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "wifiInfo"    # Lcom/android/systemui/moto/ExtendedWifiInfo;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    .line 387
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 388
    return-void
.end method
