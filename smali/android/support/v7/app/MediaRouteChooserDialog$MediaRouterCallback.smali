.class final Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteChooserDialog;

    .prologue
    .line 357
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    .line 358
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 363
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 373
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 368
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->dismiss()V

    .line 378
    return-void
.end method
