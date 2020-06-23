.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;
    }
.end annotation


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIsFullyOpenedPanel:Z

.field private mMinFraction:F

.field private mPanelFraction:F

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 69
    return-void
.end method

.method private updateScrimFraction()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 236
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    .line 237
    .local v0, "scrimFraction":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 238
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float v2, v3, v2

    div-float/2addr v1, v2

    .line 239
    const/4 v2, 0x0

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    .line 242
    return-void
.end method


# virtual methods
.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAttachedToWindow()V

    .line 93
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 94
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    .line 198
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 246
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 247
    const v2, 0x7f0702ab

    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onDetachedFromWindow()V

    .line 99
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 100
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    .line 210
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 86
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .line 87
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPanelCollapsed()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_COLLAPSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 152
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 153
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_VISIBLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 169
    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 126
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 114
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 117
    const/4 v1, 0x1

    return v1

    .line 119
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 183
    .local v0, "barConsumedEvent":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTrackingStarted()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 192
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    .line 204
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 3
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 228
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    .line 231
    invoke-static {}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getInstance()Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    move-result-object v1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->panelExpansionChanged(Z)V

    .line 233
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1
    .param p1, "minFraction"    # F

    .prologue
    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 220
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    .line 223
    :cond_0
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 77
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 81
    return-void
.end method
