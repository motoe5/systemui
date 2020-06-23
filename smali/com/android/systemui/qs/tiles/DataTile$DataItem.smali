.class public Lcom/android/systemui/qs/tiles/DataTile$DataItem;
.super Lcom/android/systemui/qs/QSDetailItems$Item;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataItem"
.end annotation


# instance fields
.field public active:Z

.field public dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

.field public dataTypeIconId:I

.field public isValid:Z

.field public label:Ljava/lang/String;

.field public mobileRoamingIconId:I

.field public mobileSignalIconId:I

.field public mobileSimIconId:I

.field public mobileSubId:I

.field public showSeparatedSignalBars:Z

.field public slotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->showSeparatedSignalBars:Z

    .line 204
    return-void
.end method
