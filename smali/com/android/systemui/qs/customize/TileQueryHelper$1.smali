.class Lcom/android/systemui/qs/customize/TileQueryHelper$1;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field final synthetic val$mainHandler:Landroid/os/Handler;

.field final synthetic val$spec:Ljava/lang/String;

.field final synthetic val$tile:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$mainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$spec:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    .line 116
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$spec:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper$1;Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
