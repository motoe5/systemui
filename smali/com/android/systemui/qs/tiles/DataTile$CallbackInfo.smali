.class final Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;
.super Ljava/lang/Object;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackInfo"
.end annotation


# instance fields
.field airplaneModeEnabled:Z

.field dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

.field dataTypeIconId:I

.field enabled:Z

.field enabledDesc:Ljava/lang/String;

.field mobilePhoneIndex:I

.field mobileRoamingIconId:I

.field mobileSignalIconId:I

.field mobileSimIconId:I

.field mobileSubId:I

.field noSim:Z

.field showSeparatedSignalBars:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;-><init>()V

    return-void
.end method
