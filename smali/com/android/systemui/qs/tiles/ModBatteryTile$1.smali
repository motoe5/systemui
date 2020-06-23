.class Lcom/android/systemui/qs/tiles/ModBatteryTile$1;
.super Landroid/database/ContentObserver;
.source "ModBatteryTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ModBatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .line 186
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get4(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/settingslib/ModUtils;->isPowerSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 191
    .local v0, "enabled":Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ModBatteryTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Power Sharing state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get7(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set6(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap3(Lcom/android/systemui/qs/tiles/ModBatteryTile;)V

    .line 197
    :cond_1
    return-void
.end method
