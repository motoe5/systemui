.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;
    }
.end annotation


# instance fields
.field private mBouncerPromptReason:I

.field protected final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mClockPrehidden:Z

.field private mClockVisibility:Z

.field protected final mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private final mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private final mHandler:Landroid/os/Handler;

.field protected mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientation:I

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field protected mRoot:Landroid/view/ViewGroup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVzwFeatureEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p4, "container"    # Landroid/view/ViewGroup;
    .param p5, "dismissCallbackRegistry"    # Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mClockVisibility:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mVzwFeatureEnabled:Z

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$4mE6q-g-9AghSEE8izztShNU7-Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$4mE6q-g-9AghSEE8izztShNU7-Q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 93
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mOrientation:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 98
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method private cancelShowRunnable()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 184
    return-void
.end method

.method private refreshClock()V
    .locals 6

    .prologue
    .line 372
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mClockPrehidden:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 373
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0a014e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, "statusView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0a014c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "spaceView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 376
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 377
    .local v0, "isPortrait":Z
    :goto_0
    const/4 v3, 0x0

    .line 378
    .local v3, "visibility":I
    if-nez v0, :cond_3

    .line 379
    const/16 v3, 0x8

    .line 384
    :cond_0
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .end local v0    # "isPortrait":Z
    .end local v1    # "spaceView":Landroid/view/View;
    .end local v2    # "statusView":Landroid/view/View;
    .end local v3    # "visibility":I
    :cond_1
    return-void

    .line 376
    .restart local v1    # "spaceView":Landroid/view/View;
    .restart local v2    # "statusView":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isPortrait":Z
    goto :goto_0

    .line 380
    .restart local v3    # "visibility":I
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mClockVisibility:Z

    if-nez v4, :cond_0

    .line 381
    const/4 v3, 0x4

    goto :goto_1
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_KeyguardBouncer-mthref-0()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    return-void
.end method

.method protected ensureView()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    .line 268
    :cond_0
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "destroyView"    # Z

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(ZZ)V

    .line 220
    return-void
.end method

.method public hide(ZZ)V
    .locals 4
    .param p1, "destroyView"    # Z
    .param p2, "resetOnDismissAction"    # Z

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onBouncerHidden()V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_2

    .line 200
    if-eqz p2, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->cancelDismissAction()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->cleanUp()V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    if-eqz p1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    :cond_3
    return-void
.end method

.method protected inflateView()V
    .locals 4

    .prologue
    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mClockPrehidden:Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    const v0, 0x7f0d003e

    .line 276
    .local v0, "resId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mVzwFeatureEnabled:Z

    if-eqz v1, :cond_0

    .line 277
    const v0, 0x7f0d003f

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0a013f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isFullscreenBouncer()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 319
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 321
    .end local v0    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    return v2
.end method

.method public isSecure()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public needsFullscreenBouncer()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 305
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHostView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 307
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 309
    .end local v0    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    return v2
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 2
    .param p1, "strongAuth"    # Z

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardHostView;->finish(ZI)V

    .line 343
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 364
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 365
    .local v0, "orientation":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 366
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mOrientation:I

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->refreshClock()V

    .line 369
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onPause()V

    .line 248
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 256
    .local v0, "wasInitialized":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 257
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    .line 261
    return-void

    .line 255
    .end local v0    # "wasInitialized":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "wasInitialized":Z
    goto :goto_0
.end method

.method protected removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 291
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 293
    :cond_0
    return-void
.end method

.method public setClockVisibility(Z)V
    .locals 0
    .param p1, "clockVisibility"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mClockVisibility:Z

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->refreshClock()V

    .line 358
    return-void
.end method

.method public setVzwFeatureEnabled(Z)V
    .locals 0
    .param p1, "vzwFeatuerEnabled"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mVzwFeatureEnabled:Z

    .line 349
    return-void
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v0

    return v0
.end method

.method public show(Z)V
    .locals 7
    .param p1, "resetSecuritySelection"    # Z

    .prologue
    .line 103
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 104
    .local v3, "keyguardUserId":I
    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingManager;->onBouncerShown()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 110
    if-eqz p1, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen()V

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz v4, :cond_3

    .line 116
    :cond_2
    return-void

    .line 119
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 121
    .local v0, "activeUserId":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    const/4 v2, 0x1

    .line 122
    .local v2, "isSystemUser":Z
    :goto_0
    if-nez v2, :cond_5

    if-ne v0, v3, :cond_5

    const/4 v1, 0x1

    .line 126
    .local v1, "allowDismissKeyguard":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 127
    return-void

    .line 121
    .end local v1    # "allowDismissKeyguard":Z
    .end local v2    # "isSystemUser":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isSystemUser":Z
    goto :goto_0

    .line 122
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "allowDismissKeyguard":Z
    goto :goto_1

    .line 131
    :cond_6
    if-nez v1, :cond_7

    .line 132
    const-string/jumbo v4, "KeyguardBouncer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User can\'t dismiss keyguard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->showMessage(Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public showPromptReason(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->showPromptReason(I)V

    .line 175
    return-void
.end method

.method public showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 190
    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mClockPrehidden:Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    if-eqz p1, :cond_0

    .line 231
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
