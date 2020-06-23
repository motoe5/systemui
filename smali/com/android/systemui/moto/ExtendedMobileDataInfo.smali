.class public Lcom/android/systemui/moto/ExtendedMobileDataInfo;
.super Ljava/lang/Object;
.source "ExtendedMobileDataInfo.java"


# static fields
.field private static final EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# instance fields
.field public activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

.field public enableActivityIconOnSB:Z

.field public enableCustomActivityIconOnQS:Z

.field public enableCustomize:Z

.field public mobileShowMobileWhenWifiActive:Z

.field public qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public rejectCode:I

.field public roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public showSeparatedSignalBars:Z

.field public slotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const-string/jumbo v1, ""

    invoke-direct {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomActivityIconOnQS:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableActivityIconOnSB:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->showSeparatedSignalBars:Z

    .line 28
    iput v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->rejectCode:I

    .line 29
    iput v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->slotId:I

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->mobileShowMobileWhenWifiActive:Z

    .line 31
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 32
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 33
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 34
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 35
    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    .line 36
    return-void
.end method


# virtual methods
.method public resetIcons()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 40
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsRoamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 41
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 42
    sget-object v0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 43
    return-void
.end method
