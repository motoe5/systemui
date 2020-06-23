.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 57
    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "delayed"    # Z
    .param p3, "speedUpFactor"    # F

    .prologue
    const/4 v3, 0x0

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "waiting":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 155
    .local v0, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    .line 157
    const/4 v1, 0x1

    .line 164
    :goto_0
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 170
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return v0
.end method

.method public go(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 49
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 177
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 62
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 87
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 87
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return v7

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 95
    .local v1, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 97
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: no panel for touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 97
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v2

    .line 101
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 104
    .local v0, "enabled":Z
    if-nez v0, :cond_3

    .line 106
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 107
    const-string/jumbo v4, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 106
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 108
    aput-object v1, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 106
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v2

    .line 112
    .end local v0    # "enabled":Z
    .end local v1    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_4
    return v2
.end method

.method public onTrackingStarted()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 190
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 194
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 6
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 126
    .local v1, "fullyOpened":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 127
    .local v2, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p2, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 129
    if-eqz p2, :cond_1

    .line 130
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v4, :cond_0

    .line 131
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 135
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    .line 137
    .local v3, "thisFrac":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_4

    const/4 v1, 0x1

    .line 139
    .end local v3    # "thisFrac":F
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 140
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 147
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getInstance()Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->panelExpansionChanged(Z)V

    .line 150
    return-void

    .line 127
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 137
    .restart local v3    # "thisFrac":F
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 142
    .end local v3    # "thisFrac":F
    :cond_5
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    goto :goto_2
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 73
    .local v0, "important":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setImportantForAccessibility(I)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setImportantForAccessibility(I)V

    .line 76
    :cond_0
    return-void

    .line 71
    .end local v0    # "important":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "important":I
    goto :goto_0
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 66
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 67
    return-void
.end method
