.class Lcom/android/systemui/qs/tiles/CastTile$1;
.super Landroid/content/BroadcastReceiver;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CastTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    .line 226
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get5(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->-get5(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 232
    :cond_0
    return-void
.end method
