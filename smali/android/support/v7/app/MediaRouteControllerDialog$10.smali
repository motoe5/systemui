.class Landroid/support/v7/app/MediaRouteControllerDialog$10;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

.field final synthetic val$route:Landroid/support/v7/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$10;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$10;->val$route:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$10;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$10;->val$route:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 873
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$10;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    .line 874
    return-void
.end method
