.class final Landroid/support/v7/app/MediaRouterThemeHelper;
.super Ljava/lang/Object;
.source "MediaRouterThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouterThemeHelper$ControllerColorType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static createThemedContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    const/high16 v5, -0x22000000

    .line 61
    invoke-static {p0}, Landroid/support/v7/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 63
    sget v1, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light:I

    .line 74
    .local v1, "theme":I
    :goto_0
    sget v4, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v4}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 75
    .local v0, "mediaRouteThemeResId":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v2, "themedContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 77
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v2    # "themedContext":Landroid/content/Context;
    .local v3, "themedContext":Landroid/content/Context;
    move-object v2, v3

    .line 79
    .end local v3    # "themedContext":Landroid/content/Context;
    .restart local v2    # "themedContext":Landroid/content/Context;
    :cond_0
    return-object v2

    .line 65
    .end local v0    # "mediaRouteThemeResId":I
    .end local v1    # "theme":I
    .end local v2    # "themedContext":Landroid/content/Context;
    :cond_1
    sget v1, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light_DarkControlPanel:I

    .restart local v1    # "theme":I
    goto :goto_0

    .line 68
    .end local v1    # "theme":I
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 69
    sget v1, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_LightControlPanel:I

    .restart local v1    # "theme":I
    goto :goto_0

    .line 71
    .end local v1    # "theme":I
    :cond_3
    sget v1, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter:I

    .restart local v1    # "theme":I
    goto :goto_0
.end method

.method public static getAlertDialogResolvedTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .prologue
    .line 149
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 150
    return p1

    .line 152
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 153
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 154
    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    const/4 v3, 0x1

    .line 153
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 155
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getButtonTextColor(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 105
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 104
    invoke-static {p0, v6, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    .line 106
    .local v1, "primaryColor":I
    const v2, 0x1010031

    invoke-static {p0, v6, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 108
    .local v0, "backgroundColor":I
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 110
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-static {p0, v6, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    return v2

    .line 112
    :cond_0
    return v1
.end method

.method public static getControllerColor(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    const/4 v6, -0x1

    .line 95
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 94
    invoke-static {p0, p1, v1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 96
    .local v0, "primaryColor":I
    invoke-static {v6, v0}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    .line 97
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 96
    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 98
    return v6

    .line 100
    :cond_0
    const/high16 v1, -0x22000000

    return v1
.end method

.method public static getDisabledAlpha(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 90
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private static getThemeColor(Landroid/content/Context;II)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I
    .param p2, "attr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    if-eqz p1, :cond_0

    .line 168
    new-array v0, v5, [I

    aput p2, v0, v4

    .line 169
    .local v0, "attrs":[I
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 170
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 171
    .local v1, "color":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    if-eqz v1, :cond_0

    .line 173
    return v1

    .line 176
    .end local v0    # "attrs":[I
    .end local v1    # "color":I
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 177
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p2, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 178
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    return v4

    .line 181
    :cond_1
    iget v4, v3, Landroid/util/TypedValue;->data:I

    return v4
.end method

.method public static getThemeResource(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 84
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLightTheme(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 161
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 162
    sget v4, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    .line 161
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 161
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 163
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_0
.end method

.method public static setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainControls"    # Landroid/view/View;
    .param p2, "groupControls"    # Landroid/view/View;
    .param p3, "hasGroup"    # Z

    .prologue
    const/4 v3, 0x0

    .line 118
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 117
    invoke-static {p0, v3, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 120
    .local v0, "primaryColor":I
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimaryDark:I

    .line 119
    invoke-static {p0, v3, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    .line 121
    .local v1, "primaryDarkColor":I
    if-eqz p3, :cond_0

    invoke-static {p0, v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v2

    const/high16 v3, -0x22000000

    if-ne v2, v3, :cond_0

    .line 124
    move v1, v0

    .line 125
    const/4 v0, -0x1

    .line 127
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public static setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeSlider"    # Landroid/support/v7/app/MediaRouteVolumeSlider;
    .param p2, "backgroundView"    # Landroid/view/View;

    .prologue
    .line 137
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v1

    .line 138
    .local v1, "controllerColor":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, "backgroundColor":I
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    .line 144
    .end local v0    # "backgroundColor":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 145
    return-void
.end method
