.class Lcom/android/systemui/qs/tiles/DndTile$2;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-wrap0(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get5(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    .line 302
    :cond_0
    return-void
.end method

.method public onZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 287
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "DndTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZenChanged() called with: zen = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-wrap1(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-wrap0(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get5(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    .line 295
    :cond_1
    return-void
.end method
