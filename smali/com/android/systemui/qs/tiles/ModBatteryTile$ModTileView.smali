.class Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "ModBatteryTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ModBatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModTileView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .line 226
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get1(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;->mIcon:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get1(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 240
    :cond_0
    return-void
.end method
