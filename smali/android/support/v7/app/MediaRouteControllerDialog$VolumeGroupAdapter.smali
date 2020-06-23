.class Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mDisabledAlpha:F

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteControllerDialog;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1277
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 1278
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1279
    invoke-static {p2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    .line 1280
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1284
    move-object v5, p2

    .line 1285
    .local v5, "v":Landroid/view/View;
    if-nez p2, :cond_2

    .line 1286
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1287
    sget v9, Landroid/support/v7/mediarouter/R$layout;->mr_controller_volume_item:I

    const/4 v10, 0x0

    .line 1286
    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1292
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1293
    .local v3, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    if-eqz v3, :cond_1

    .line 1294
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v2

    .line 1296
    .local v2, "isEnabled":Z
    sget v8, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1297
    .local v4, "routeName":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1298
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    sget v8, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/app/MediaRouteVolumeSlider;

    .line 1303
    .local v7, "volumeSlider":Landroid/support/v7/app/MediaRouteVolumeSlider;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v9, v9, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    .line 1302
    invoke-static {v8, v7, v9}, Landroid/support/v7/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 1304
    invoke-virtual {v7, v3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 1305
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    .line 1307
    invoke-virtual {v7, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    .line 1308
    if-eqz v2, :cond_0

    .line 1309
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v8, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1310
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1311
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1312
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1321
    :cond_0
    :goto_1
    sget v8, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1322
    .local v6, "volumeItemIcon":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    const/16 v8, 0xff

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1326
    sget v8, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1327
    .local v1, "container":Landroid/widget/LinearLayout;
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1328
    const/4 v8, 0x4

    .line 1327
    :goto_3
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1331
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1332
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1333
    .local v0, "alphaAnim":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1334
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1335
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1336
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 1337
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1340
    .end local v0    # "alphaAnim":Landroid/view/animation/Animation;
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "isEnabled":Z
    .end local v4    # "routeName":Landroid/widget/TextView;
    .end local v6    # "volumeItemIcon":Landroid/widget/ImageView;
    .end local v7    # "volumeSlider":Landroid/support/v7/app/MediaRouteVolumeSlider;
    :cond_1
    return-object v5

    .line 1289
    .end local v3    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_2
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v8, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolumeGroupItemHeight(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1314
    .restart local v2    # "isEnabled":Z
    .restart local v3    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .restart local v4    # "routeName":Landroid/widget/TextView;
    .restart local v7    # "volumeSlider":Landroid/support/v7/app/MediaRouteVolumeSlider;
    :cond_3
    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1315
    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1316
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    goto :goto_1

    .line 1322
    .restart local v6    # "volumeItemIcon":Landroid/widget/ImageView;
    :cond_4
    iget v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_2

    .line 1328
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method
