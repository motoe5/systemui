.class final Lcom/android/settingslib/drawer/TileUtils$1;
.super Ljava/lang/Object;
.source "TileUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/TileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "rhs"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 553
    iget v0, p2, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v1, p1, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-ne v0, v1, :cond_0

    .line 554
    invoke-static {p2}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->getOrderPriority(Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    .line 555
    invoke-static {p1}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->getOrderPriority(Lcom/android/settingslib/drawer/Tile;)I

    move-result v1

    .line 554
    sub-int/2addr v0, v1

    return v0

    .line 558
    :cond_0
    iget v0, p2, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v1, p1, Lcom/android/settingslib/drawer/Tile;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 549
    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/drawer/TileUtils$1;->compare(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    return v0
.end method
