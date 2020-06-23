.class final Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
.super Ljava/lang/Object;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z

.field airplaneModeEnabled:Z

.field dataContentDescription:Ljava/lang/String;

.field dataTypeIconId:I

.field enabled:Z

.field enabledDesc:Ljava/lang/String;

.field isBidiDirectionEnabled:Z

.field isDataTypeIconWide:Z

.field isMotoWideIcons:Z

.field isRejectCodeEnabled:Z

.field mobileActivityDescription:Ljava/lang/String;

.field mobileActivityIconId:I

.field mobilePhoneDescription:Ljava/lang/String;

.field mobilePhoneIndex:I

.field mobilePhoneLabel:Ljava/lang/String;

.field mobileRoamingDescription:Ljava/lang/String;

.field mobileRoamingIconId:I

.field mobileSignalIconId:I

.field mobileSimDescription:Ljava/lang/String;

.field mobileSimIconId:I

.field mobileSubId:I

.field noSim:Z

.field roaming:Z

.field showMobileWhenNotEnabled:Z

.field showMobileWhenWifiActive:Z

.field showSeparatedSignalBars:Z

.field signalContentDescription:Ljava/lang/String;

.field wifiConnected:Z

.field wifiEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showSeparatedSignalBars:Z

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>()V

    return-void
.end method
