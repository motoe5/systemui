.class public final Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SystemRouteController"
.end annotation


# instance fields
.field private final mRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    .line 718
    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    .line 719
    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 723
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->requestSetVolume(Ljava/lang/Object;I)V

    .line 724
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->requestUpdateVolume(Ljava/lang/Object;I)V

    .line 729
    return-void
.end method
