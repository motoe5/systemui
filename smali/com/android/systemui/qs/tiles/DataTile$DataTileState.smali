.class public Lcom/android/systemui/qs/tiles/DataTile$DataTileState;
.super Ljava/lang/Object;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTileState"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public dataConnection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->activityIn:Z

    .line 544
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->activityOut:Z

    .line 545
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->dataConnection:I

    .line 546
    return-void
.end method
