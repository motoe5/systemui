.class Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;
    }
.end annotation


# instance fields
.field private final mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 1242
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1230
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener$1;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->mStopTrackingTouch:Ljava/lang/Runnable;

    .line 1243
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1263
    if-eqz p3, :cond_1

    .line 1264
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1265
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    sget-boolean v1, Landroid/support/v7/app/MediaRouteControllerDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1266
    const-string/jumbo v1, "MediaRouteCtrlDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressChanged(): calling MediaRouter.RouteInfo.requestSetVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1267
    const-string/jumbo v3, ")"

    .line 1266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 1271
    .end local v0    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->mStopTrackingTouch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1250
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    iput-object v0, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1251
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1259
    return-void
.end method
