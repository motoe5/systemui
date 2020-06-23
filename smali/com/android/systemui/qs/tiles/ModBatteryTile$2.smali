.class Lcom/android/systemui/qs/tiles/ModBatteryTile$2;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
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
.method constructor <init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .line 200
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set2(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z

    .line 210
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get5(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get5(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set4(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-get6(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-wrap1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set5(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;->this$0:Lcom/android/systemui/qs/tiles/ModBatteryTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-set2(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z

    .line 204
    return-void
.end method
