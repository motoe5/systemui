.class public final Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 129
    return-void
.end method


# virtual methods
.method public addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-object p0

    .line 158
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .locals 6

    .prologue
    .line 185
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v2, "routeBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 189
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "routes"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "routeBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_1
    new-instance v3, Landroid/support/v7/media/MediaRouteProviderDescriptor;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroid/support/v7/media/MediaRouteProviderDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v3
.end method
