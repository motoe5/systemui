.class public final Landroid/support/v7/media/MediaRouterApi24$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterApi24.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    return v0
.end method
