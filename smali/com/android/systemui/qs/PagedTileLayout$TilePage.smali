.class public Lcom/android/systemui/qs/PagedTileLayout$TilePage;
.super Lcom/android/systemui/qs/TileLayout;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilePage"
.end annotation


# instance fields
.field private mMaxRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    .line 280
    return-void
.end method

.method private getRows()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 295
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 296
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1

    .line 298
    :cond_0
    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public isFull()Z
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateResources()Z
    .locals 3

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getRows()I

    move-result v1

    .line 285
    .local v1, "rows":I
    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 286
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 287
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->requestLayout()V

    .line 290
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v2

    if-nez v2, :cond_2

    .end local v0    # "changed":Z
    :goto_1
    return v0

    .line 285
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
