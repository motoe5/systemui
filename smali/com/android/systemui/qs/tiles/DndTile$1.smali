.class Lcom/android/systemui/qs/tiles/DndTile$1;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$1;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "DndTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSharedPreferenceChanged() called with: sharedPreferences = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string/jumbo v2, "], key = ["

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    const-string/jumbo v2, "]"

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    const-string/jumbo v0, "DndTileCombinedIcon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    const-string/jumbo v0, "DndTileVisible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 277
    if-eqz v0, :cond_2

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$1;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState()V

    .line 281
    :cond_2
    return-void
.end method
