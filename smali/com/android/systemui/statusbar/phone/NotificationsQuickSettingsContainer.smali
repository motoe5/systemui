.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainer.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private mBottomPadding:I

.field private mCustomizerAnimating:Z

.field private mHeadsUp:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mInflated:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mQsExpanded:Z

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mStackScroller:Landroid/view/View;

.field private mStackScrollerMargin:I

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private reloadWidth(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    const v2, 0x7f0701e6

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method private setBottomMargin(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bottomMargin"    # I

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 189
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 114
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 115
    .local v4, "userSwitcherVisible":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 117
    .local v3, "statusBarVisible":Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUp:Z

    .line 118
    .local v0, "qsBottom":Z
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 119
    .local v2, "stackQsTop":Landroid/view/View;
    :goto_2
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 122
    .local v1, "stackQsBottom":Landroid/view/View;
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    if-ne p2, v5, :cond_7

    .line 123
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .end local v1    # "stackQsBottom":Landroid/view/View;
    :cond_0
    :goto_4
    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    .line 114
    .end local v0    # "qsBottom":Z
    .end local v2    # "stackQsTop":Landroid/view/View;
    .end local v3    # "statusBarVisible":Z
    .end local v4    # "userSwitcherVisible":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "userSwitcherVisible":Z
    goto :goto_0

    .line 115
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "statusBarVisible":Z
    goto :goto_1

    .line 118
    .restart local v0    # "qsBottom":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    .restart local v2    # "stackQsTop":Landroid/view/View;
    goto :goto_2

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    .restart local v1    # "stackQsBottom":Landroid/view/View;
    goto :goto_3

    .line 124
    :cond_5
    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_4

    .line 125
    :cond_6
    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    goto :goto_4

    .line 127
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    if-ne p2, v5, :cond_b

    .line 129
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 128
    .end local v2    # "stackQsTop":Landroid/view/View;
    :cond_8
    :goto_5
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    .line 130
    .restart local v2    # "stackQsTop":Landroid/view/View;
    :cond_9
    if-nez v3, :cond_a

    if-eqz v4, :cond_8

    :cond_a
    move-object v2, v1

    goto :goto_5

    .line 133
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p2, v5, :cond_d

    .line 135
    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 134
    .end local v1    # "stackQsBottom":Landroid/view/View;
    :goto_6
    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    .restart local v1    # "stackQsBottom":Landroid/view/View;
    :cond_c
    move-object v1, v2

    .line 136
    goto :goto_6

    .line 138
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    if-ne p2, v5, :cond_e

    .line 139
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    .line 143
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 109
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 78
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 82
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 87
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 66
    const v1, 0x7f0a021c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    .line 67
    const v1, 0x7f0a01ef

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    .line 69
    const v1, 0x7f0a013e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 70
    const v1, 0x7f0a014f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 71
    .local v0, "userSwitcher":Landroid/view/ViewStub;
    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 73
    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    move-object v0, p2

    .line 157
    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    .line 158
    .local v0, "container":Lcom/android/systemui/plugins/qs/QS;
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setContainer(Landroid/view/ViewGroup;)V

    .line 159
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 196
    .local v0, "hasHeadsUp":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUp:Z

    if-ne v1, v0, :cond_1

    .line 197
    return-void

    .line 195
    .end local v0    # "hasHeadsUp":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasHeadsUp":Z
    goto :goto_0

    .line 199
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUp:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    .line 201
    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 150
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    .line 153
    :cond_0
    return-void
.end method

.method public setCustomizerAnimating(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    if-eq v0, p1, :cond_0

    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    .line 173
    :cond_0
    return-void
.end method

.method public setCustomizerShowing(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 176
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    .line 166
    :cond_0
    return-void
.end method
