.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;
    }
.end annotation


# instance fields
.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDisabled1:I

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 48
    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 225
    if-nez p2, :cond_0

    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 227
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 232
    const-wide/16 v2, 0xa0

    .line 230
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 233
    const-wide/16 v2, 0x0

    .line 230
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$jchDYqnOiONW15YVVSP07Z9jl0o;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$jchDYqnOiONW15YVVSP07Z9jl0o;-><init>(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 236
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    if-nez p2, :cond_0

    .line 245
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 250
    const-wide/16 v2, 0x140

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 252
    const-wide/16 v2, 0x32

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 257
    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    .line 261
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 263
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 261
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 267
    :cond_1
    return-void
.end method

.method private initEmergencyCryptkeeperText()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0a00c9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "emergencyViewStub":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    if-eqz v0, :cond_0

    .line 273
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "emergencyViewStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 276
    .restart local v0    # "emergencyViewStub":Landroid/view/View;
    :cond_2
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 278
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_CollapsedStatusBarFragment_9560(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 235
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/high16 v2, 0x100000

    const/high16 v1, 0x20000

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchTransitionFadingAway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 175
    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v0

    .line 175
    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getVzwBouncerPolicyEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 175
    if-eqz v0, :cond_0

    .line 179
    or-int/2addr p1, v1

    .line 180
    or-int/2addr p1, v2

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getVzwBouncerPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getShowIconsOfStatusBar()Z

    move-result v0

    .line 182
    if-eqz v0, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 182
    if-eqz v0, :cond_1

    .line 185
    const v0, -0x20001

    and-int/2addr p1, v0

    .line 186
    const v0, -0x100001

    and-int/2addr p1, v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    or-int/2addr p1, v1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    or-int/2addr p1, v2

    .line 197
    :cond_3
    return p1
.end method

.method public disable(IIZ)V
    .locals 5
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    const/high16 v4, 0x100000

    const/high16 v3, 0x20000

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    .line 145
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    .line 146
    .local v1, "old1":I
    xor-int v0, p1, v1

    .line 147
    .local v0, "diff1":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    .line 150
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    .line 164
    :cond_0
    :goto_0
    and-int v2, v0, v3

    if-eqz v2, :cond_1

    .line 165
    and-int v2, p1, v3

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 154
    :cond_2
    and-int v2, v0, v4

    if-eqz v2, :cond_0

    .line 155
    and-int v2, p1, v4

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    goto :goto_1
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 214
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 206
    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 3
    .param p1, "notificationIconAreaController"    # Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a01e4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 132
    .local v0, "notificationIconArea":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    .line 131
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 134
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 73
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v0, 0x7f0d010c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 121
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 122
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 110
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string/jumbo v0, "panel_state"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 87
    if-eqz p2, :cond_0

    const-string/jumbo v0, "panel_state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const-string/jumbo v1, "panel_state"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->go(I)V

    .line 90
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const v0, 0x7f0a028d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a027d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 94
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalClusterView:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initEmergencyCryptkeeperText()V

    .line 98
    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 218
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 210
    return-void
.end method
