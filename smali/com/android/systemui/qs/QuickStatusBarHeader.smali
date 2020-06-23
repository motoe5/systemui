.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mExpanded:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mListening:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tintArea"    # Landroid/graphics/Rect;
    .param p3, "intensity"    # F
    .param p4, "color"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 88
    :cond_0
    return-void
.end method

.method private updateResources()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_QuickStatusBarHeader_4386()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 94
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 127
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 128
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const v9, 0x7f0a0053

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0a021f

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 61
    iget-object v8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v5, 0x7f05003a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x1010030

    invoke-static {v5, v8}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 71
    .local v1, "colorForeground":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    move v5, v6

    :goto_1
    int-to-float v2, v5

    .line 72
    .local v2, "intensity":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .local v4, "tintArea":Landroid/graphics/Rect;
    invoke-direct {p0, v9, v4, v2, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 75
    const v5, 0x7f0a0083

    invoke-direct {p0, v5, v4, v2, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 77
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    .line 78
    .local v0, "battery":Lcom/android/systemui/BatteryMeterView;
    invoke-virtual {v0, v7}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 80
    const-class v5, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 81
    return-void

    .line 62
    .end local v0    # "battery":Lcom/android/systemui/BatteryMeterView;
    .end local v1    # "colorForeground":I
    .end local v2    # "intensity":F
    .end local v4    # "tintArea":Landroid/graphics/Rect;
    :cond_0
    const/16 v5, 0x8

    goto :goto_0

    .restart local v1    # "colorForeground":I
    :cond_1
    move v5, v7

    .line 71
    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 100
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 1
    .param p1, "qsPanelCallback"    # Lcom/android/systemui/qs/QSDetail$Callback;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 156
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    .line 118
    return-void
.end method

.method public setExpansion(F)V
    .locals 0
    .param p1, "headerExpansionFraction"    # F

    .prologue
    .line 121
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    .line 136
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 144
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 145
    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 152
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/systemui/qs/-$Lambda$MYFfJqf0RvM0fw4npDsNGCyRkVQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$Lambda$MYFfJqf0RvM0fw4npDsNGCyRkVQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method
