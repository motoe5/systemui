.class public final Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 217
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public static setPlaybackStream(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    .prologue
    .line 233
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 234
    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    .line 229
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 230
    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .prologue
    .line 237
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 238
    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 249
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .line 250
    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$VolumeCallback;

    .line 249
    .end local p1    # "volumeCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 251
    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeHandling"    # I

    .prologue
    .line 245
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 246
    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeMax"    # I

    .prologue
    .line 241
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 242
    return-void
.end method
