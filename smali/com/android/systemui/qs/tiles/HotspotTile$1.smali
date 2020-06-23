.class Lcom/android/systemui/qs/tiles/HotspotTile$1;
.super Landroid/content/BroadcastReceiver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-set0(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 83
    return-void
.end method
