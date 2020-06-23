.class Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.super Landroid/support/v7/media/SystemMediaRouteProvider;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/MediaRouterJellybean$Callback;
.implements Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;,
        Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;,
        Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    }
.end annotation


# static fields
.field private static final LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActiveScan:Z

.field protected final mCallbackObj:Ljava/lang/Object;

.field protected mCallbackRegistered:Z

.field private mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

.field protected mRouteTypes:I

.field protected final mRouterObj:Ljava/lang/Object;

.field private mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

.field private final mSyncCallback:Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

.field protected final mSystemRouteRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUserRouteCategoryObj:Ljava/lang/Object;

.field protected final mUserRouteRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVolumeCallbackObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "f":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 225
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "f":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .restart local v0    # "f":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 234
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "syncCallback"    # Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    .line 263
    iput-object p2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSyncCallback:Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .line 264
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean;->getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    .line 265
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->createCallbackObj()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    .line 266
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->createVolumeCallbackObj()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mVolumeCallbackObj:Ljava/lang/Object;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_user_route_category_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 269
    invoke-static {v1, v2, v3}, Landroid/support/v7/media/MediaRouterJellybean;->createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteCategoryObj:Ljava/lang/Object;

    .line 272
    invoke-direct {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRoutes()V

    .line 273
    return-void
.end method

.method private addSystemRouteNoPublish(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 334
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->assignRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)V

    .line 337
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v2, 0x1

    return v2

    .line 340
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    return v3
.end method

.method private assignRouteId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 347
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getDefaultRoute()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v2, 0x1

    .line 348
    .local v2, "isDefault":Z
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v1, "DEFAULT_ROUTE"

    .line 350
    .local v1, "id":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    .line 351
    return-object v1

    .line 347
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "isDefault":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isDefault":Z
    goto :goto_0

    .line 349
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "ROUTE_%08x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getRouteName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "id":Ljava/lang/String;
    goto :goto_1

    .line 353
    :cond_2
    const/4 v0, 0x2

    .line 354
    .local v0, "i":I
    :goto_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "newId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 356
    return-object v3

    .line 353
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private updateSystemRoutes()V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateCallback()V

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "changed":Z
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    invoke-static {v3}, Landroid/support/v7/media/MediaRouterJellybean;->getRoutes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "changed":Z
    .local v2, "routeObj$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 324
    .local v1, "routeObj":Ljava/lang/Object;
    invoke-direct {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->addSystemRouteNoPublish(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .local v0, "changed":Z
    goto :goto_0

    .line 326
    .end local v0    # "changed":Z
    .end local v1    # "routeObj":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 329
    :cond_1
    return-void
.end method


# virtual methods
.method protected createCallbackObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 650
    invoke-static {p0}, Landroid/support/v7/media/MediaRouterJellybean;->createCallback(Landroid/support/v7/media/MediaRouterJellybean$Callback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createVolumeCallbackObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 654
    invoke-static {p0}, Landroid/support/v7/media/MediaRouterJellybean;->createVolumeCallback(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected findSystemRouteRecord(Ljava/lang/Object;)I
    .locals 3
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 547
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 548
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 549
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 550
    return v1

    .line 548
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 559
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    return v1

    .line 558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 567
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 568
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 569
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    iget-object v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v2, p1, :cond_0

    .line 570
    return v1

    .line 568
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected getDefaultRoute()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    .line 670
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mGetDefaultRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRouteName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    .local v0, "name":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method protected getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 577
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 578
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    .param p2, "builder"    # Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .prologue
    .line 602
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    .line 601
    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getSupportedTypes(Ljava/lang/Object;)I

    move-result v0

    .line 603
    .local v0, "supportedTypes":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 604
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_AUDIO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 606
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 607
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->LIVE_VIDEO_CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 611
    :cond_1
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    .line 610
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 613
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getPlaybackStream(Ljava/lang/Object;)I

    move-result v1

    .line 612
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 615
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolume(Ljava/lang/Object;)I

    move-result v1

    .line 614
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 617
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolumeMax(Ljava/lang/Object;)I

    move-result v1

    .line 616
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 619
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolumeHandling(Ljava/lang/Object;)I

    move-result v1

    .line 618
    invoke-virtual {p2, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 620
    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 4
    .param p1, "routeId"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 279
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 280
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    new-instance v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;

    iget-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-direct {v2, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 282
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 8
    .param p1, "request"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .prologue
    .line 287
    const/4 v5, 0x0

    .line 288
    .local v5, "newRouteTypes":I
    const/4 v4, 0x0

    .line 289
    .local v4, "newActiveScan":Z
    if-eqz p1, :cond_3

    .line 290
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    .line 291
    .local v6, "selector":Landroid/support/v7/media/MediaRouteSelector;
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 293
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "category":Ljava/lang/String;
    const-string/jumbo v7, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 296
    or-int/lit8 v5, v5, 0x1

    .line 293
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const-string/jumbo v7, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 298
    or-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 300
    :cond_1
    const/high16 v7, 0x800000

    or-int/2addr v5, v7

    goto :goto_1

    .line 303
    .end local v1    # "category":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v4

    .line 306
    .end local v0    # "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "newActiveScan":Z
    .end local v6    # "selector":Landroid/support/v7/media/MediaRouteSelector;
    :cond_3
    iget v7, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    if-ne v7, v5, :cond_4

    iget-boolean v7, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mActiveScan:Z

    if-eq v7, v4, :cond_5

    .line 307
    :cond_4
    iput v5, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    .line 308
    iput-boolean v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mActiveScan:Z

    .line 309
    invoke-direct {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRoutes()V

    .line 311
    :cond_5
    return-void
.end method

.method public onRouteAdded(Ljava/lang/Object;)V
    .locals 1
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->addSystemRouteNoPublish(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 318
    :cond_0
    return-void
.end method

.method public onRouteChanged(Ljava/lang/Object;)V
    .locals 3
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 376
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 377
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 378
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)V

    .line 379
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 382
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    return-void
.end method

.method public onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "groupObj"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .prologue
    .line 438
    return-void
.end method

.method public onRouteRemoved(Ljava/lang/Object;)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 365
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 366
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 370
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public onRouteSelected(ILjava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 404
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    .line 405
    const v5, 0x800003

    .line 404
    invoke-static {v4, v5}, Landroid/support/v7/media/MediaRouterJellybean;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-eq p2, v4, :cond_0

    .line 408
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v3

    .line 412
    .local v3, "userRouteRecord":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    if-eqz v3, :cond_2

    .line 413
    iget-object v4, v3, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 418
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 419
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 420
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSyncCallback:Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;

    .line 421
    iget-object v5, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    .line 420
    invoke-interface {v4, v5}, Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;->getSystemRouteByDescriptorId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 422
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_1

    .line 423
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method public onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "groupObj"    # Ljava/lang/Object;

    .prologue
    .line 443
    return-void
.end method

.method public onRouteUnselected(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 433
    return-void
.end method

.method public onRouteVolumeChanged(Ljava/lang/Object;)V
    .locals 5
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 388
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 389
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 390
    .local v2, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->getVolume(Ljava/lang/Object;)I

    move-result v1

    .line 391
    .local v1, "newVolume":I
    iget-object v3, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 393
    new-instance v3, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    iget-object v4, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-direct {v3, v4}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Landroid/support/v7/media/MediaRouteDescriptor;)V

    invoke-virtual {v3, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v3

    .line 392
    iput-object v3, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 396
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    .line 400
    .end local v0    # "index":I
    .end local v1    # "newVolume":I
    .end local v2    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    :cond_0
    return-void
.end method

.method public onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 6
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v4

    if-eq v4, p0, :cond_1

    .line 465
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteCategoryObj:Ljava/lang/Object;

    .line 464
    invoke-static {v4, v5}, Landroid/support/v7/media/MediaRouterJellybean;->createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 466
    .local v3, "routeObj":Ljava/lang/Object;
    new-instance v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    invoke-direct {v2, p1, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;Ljava/lang/Object;)V

    .line 467
    .local v2, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    invoke-static {v3, v2}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 468
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mVolumeCallbackObj:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V

    .line 470
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    invoke-static {v4, v3}, Landroid/support/v7/media/MediaRouterJellybean;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    .end local v2    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_0
    :goto_0
    return-void

    .line 477
    .end local v3    # "routeObj":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    const v5, 0x800003

    .line 476
    invoke-static {v4, v5}, Landroid/support/v7/media/MediaRouterJellybean;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 478
    .restart local v3    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result v0

    .line 479
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 480
    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 481
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    iget-object v4, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method public onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 505
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 506
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 507
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    invoke-virtual {p0, v1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V

    .line 510
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_0
    return-void
.end method

.method public onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 491
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 492
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 493
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 494
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    iget-object v2, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    iget-object v2, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouterJellybean;->removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    .end local v0    # "index":I
    .end local v1    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_0
    return-void
.end method

.method public onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v3

    if-eq v3, p0, :cond_2

    .line 521
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findUserRouteRecord(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 522
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 523
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mUserRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .line 524
    .local v2, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    iget-object v3, v2, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->selectRoute(Ljava/lang/Object;)V

    .line 533
    .end local v2    # "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    :cond_1
    :goto_0
    return-void

    .line 527
    .end local v0    # "index":I
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescriptorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecordByDescriptorId(Ljava/lang/String;)I

    move-result v0

    .line 528
    .restart local v0    # "index":I
    if-ltz v0, :cond_1

    .line 529
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .line 530
    .local v1, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;
    iget-object v3, v1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->selectRoute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVolumeSetRequest(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "volume"    # I

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    .line 448
    .local v0, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    if-eqz v0, :cond_0

    .line 449
    iget-object v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 451
    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "routeObj"    # Ljava/lang/Object;
    .param p2, "direction"    # I

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getUserRouteRecord(Ljava/lang/Object;)Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    move-result-object v0

    .line 456
    .local v0, "record":Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
    if-eqz v0, :cond_0

    .line 457
    iget-object v1, v0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 459
    :cond_0
    return-void
.end method

.method protected publishRoutes()V
    .locals 4

    .prologue
    .line 537
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    .line 538
    .local v0, "builder":Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 539
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 540
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    iget-object v3, v3, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 544
    return-void
.end method

.method protected selectRoute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "routeObj"    # Ljava/lang/Object;

    .prologue
    .line 658
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mSelectRouteWorkaround:Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    .line 662
    const v2, 0x800003

    .line 661
    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 663
    return-void
.end method

.method protected updateCallback()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 639
    iput-boolean v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    .line 640
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean;->removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    :cond_0
    iget v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    if-eqz v0, :cond_1

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackRegistered:Z

    .line 645
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/support/v7/media/MediaRouterJellybean;->addCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 647
    :cond_1
    return-void
.end method

.method protected updateSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)V
    .locals 3
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    .prologue
    .line 584
    new-instance v0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 585
    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptorId:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->getRouteName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .local v0, "builder":Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;->onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V

    .line 587
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    .line 588
    return-void
.end method

.method protected updateUserRouteProperties(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;

    .prologue
    .line 624
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    .line 625
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackType(Ljava/lang/Object;I)V

    .line 628
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    .line 627
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackStream(Ljava/lang/Object;I)V

    .line 630
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    .line 629
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 632
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    .line 631
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeMax(Ljava/lang/Object;I)V

    .line 634
    iget-object v0, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    .line 633
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeHandling(Ljava/lang/Object;I)V

    .line 635
    return-void
.end method
