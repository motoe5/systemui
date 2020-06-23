.class public Lcom/android/systemui/pip/phone/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivity$1;,
        Lcom/android/systemui/pip/phone/PipMenuActivity$2;,
        Lcom/android/systemui/pip/phone/PipMenuActivity$3;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mDismissButton:Landroid/view/View;

.field private mDownDelta:Landroid/graphics/PointF;

.field private mDownPosition:Landroid/graphics/PointF;

.field private mExpandButton:Landroid/widget/ImageView;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mToControllerMessenger:Landroid/os/Messenger;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/phone/PipMenuActivity;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "actions"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "fraction"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateDismissFraction(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    .line 112
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 121
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    .line 122
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    .line 164
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$3;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method private cancelDelayedFinish()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

.method private dismissPip()V
    .locals 2

    .prologue
    .line 544
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$5;-><init>(Ljava/lang/Object;)V

    .line 547
    const/4 v1, 0x0

    .line 544
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 548
    return-void
.end method

.method private expandPip()V
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$6;-><init>(Ljava/lang/Object;)V

    .line 533
    const/4 v1, 0x0

    .line 530
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 534
    return-void
.end method

.method private hideMenu()V
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 356
    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;Z)V
    .locals 10
    .param p1, "animationFinishedRunnable"    # Ljava/lang/Runnable;
    .param p2, "notifyMenuVisibility"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 359
    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v2, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 361
    if-eqz p2, :cond_0

    .line 362
    invoke-direct {p0, v6}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 364
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 365
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    .line 366
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    .line 365
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 367
    .local v1, "menuAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    .line 369
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    .line 368
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 370
    .local v0, "dismissAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 371
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x7d

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 373
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/pip/phone/PipMenuActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity$5;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 387
    .end local v0    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "menuAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_11340(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 1
    .param p0, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_16644(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_18298(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "actionView"    # Landroid/widget/ImageView;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 454
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 455
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_18629(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 3
    .param p0, "action"    # Landroid/app/RemoteAction;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 461
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "PipMenuActivity"

    const-string/jumbo v2, "Failed to send action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyActivityCallback(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 559
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 560
    const-string/jumbo v1, "Could not notify controller of activity finished"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private notifyMenuStateChange(I)V
    .locals 2
    .param p1, "menuState"    # I

    .prologue
    .line 520
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    .line 521
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 523
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 524
    const-string/jumbo v1, "Could not notify controller of PIP menu visibility"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private notifyRegisterInputConsumer()V
    .locals 2

    .prologue
    .line 508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 510
    const-string/jumbo v1, "Could not notify controller to register input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private notifyUnregisterInputConsumer()V
    .locals 2

    .prologue
    .line 514
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 516
    const-string/jumbo v1, "Could not notify controller to unregister input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private repostDelayedFinish(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    return-void
.end method

.method private sendEmptyMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 566
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method private sendMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PipMenuActivity"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 415
    return-void
.end method

.method private showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 11
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 311
    iput-boolean p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 312
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq v3, p1, :cond_5

    .line 313
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq v3, v7, :cond_2

    .line 314
    if-ne p1, v7, :cond_3

    const/4 v0, 0x1

    .line 315
    .local v0, "deferTouchesUntilAnimationEnds":Z
    :goto_0
    xor-int/lit8 v3, v0, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 317
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 318
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 321
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 322
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 323
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    .line 324
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    .line 323
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 325
    .local v2, "menuAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 326
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    .line 327
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    .line 326
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 328
    .local v1, "dismissAnim":Landroid/animation/ObjectAnimator;
    if-ne p1, v7, :cond_4

    .line 329
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 333
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 335
    if-eqz p4, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/pip/phone/PipMenuActivity$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$4;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 352
    .end local v0    # "deferTouchesUntilAnimationEnds":Z
    .end local v1    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "menuAnim":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 313
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "deferTouchesUntilAnimationEnds":Z
    goto :goto_0

    .line 314
    .end local v0    # "deferTouchesUntilAnimationEnds":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "deferTouchesUntilAnimationEnds":Z
    goto :goto_0

    .line 331
    .restart local v1    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .restart local v2    # "menuAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 347
    .end local v0    # "deferTouchesUntilAnimationEnds":Z
    .end local v1    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "menuAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-eqz p4, :cond_6

    .line 348
    const-wide/16 v4, 0x7d0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    .line 350
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyUnregisterInputConsumer()V

    goto :goto_2
.end method

.method private showPipMenu()V
    .locals 2

    .prologue
    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 553
    const-string/jumbo v1, "Could not notify controller to show PIP menu"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x0

    .line 418
    const v9, 0x7f0a00d6

    invoke-virtual {p0, v9}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 419
    .local v3, "expandContainer":Landroid/view/ViewGroup;
    const v9, 0x7f0a002b

    invoke-virtual {p0, v9}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 420
    .local v2, "actionsContainer":Landroid/view/ViewGroup;
    new-instance v9, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk;

    invoke-direct {v9}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk;-><init>()V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    .line 426
    :cond_0
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 487
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_a

    .line 431
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 432
    .local v6, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    .line 434
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    const v11, 0x7f0d00b9

    .line 433
    invoke-virtual {v6, v11, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 435
    .local v1, "actionView":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 439
    .end local v1    # "actionView":Landroid/widget/ImageView;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 440
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    move v9, v10

    :goto_3
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 442
    :cond_3
    const/16 v9, 0x8

    goto :goto_3

    .line 446
    :cond_4
    if-eqz p1, :cond_7

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v9, v11, :cond_6

    const/4 v7, 0x1

    .line 448
    .local v7, "isLandscapePip":Z
    :goto_4
    const/4 v5, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_a

    .line 449
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 450
    .local v0, "action":Landroid/app/RemoteAction;
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 453
    .restart local v1    # "actionView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;

    invoke-direct {v11, v1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;-><init>(Ljava/lang/Object;)V

    .line 456
    iget-object v12, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 453
    invoke-virtual {v9, p0, v11, v12}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 457
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 459
    new-instance v9, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$4;

    invoke-direct {v9, v0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    :cond_5
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 468
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 472
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 471
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 473
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v7, :cond_9

    if-lez v5, :cond_9

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    :goto_7
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 448
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 447
    .end local v0    # "action":Landroid/app/RemoteAction;
    .end local v1    # "actionView":Landroid/widget/ImageView;
    .end local v7    # "isLandscapePip":Z
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "isLandscapePip":Z
    goto :goto_4

    .line 446
    .end local v7    # "isLandscapePip":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "isLandscapePip":Z
    goto :goto_4

    .line 468
    .restart local v0    # "action":Landroid/app/RemoteAction;
    .restart local v1    # "actionView":Landroid/widget/ImageView;
    :cond_8
    const v9, 0x3f0a3d71    # 0.54f

    goto :goto_6

    .restart local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move v9, v10

    .line 473
    goto :goto_7

    .line 480
    .end local v0    # "action":Landroid/app/RemoteAction;
    .end local v1    # "actionView":Landroid/widget/ImageView;
    .end local v5    # "i":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "isLandscapePip":Z
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    .local v4, "expandedLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 482
    const v10, 0x7f070204

    .line 481
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 483
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 484
    const v10, 0x7f070209

    .line 483
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 485
    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_0
.end method

.method private updateDismissFraction(F)V
    .locals 7
    .param p1, "fraction"    # F

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const v5, 0x3f19999a    # 0.6f

    .line 491
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, p1

    .line 492
    .local v2, "menuAlpha":F
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 493
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 494
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 496
    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v2

    mul-float v4, v5, p1

    add-float v1, v3, v4

    .line 497
    .local v1, "interpolatedAlpha":F
    mul-float v3, v1, v6

    float-to-int v0, v3

    .line 504
    .end local v1    # "interpolatedAlpha":F
    .local v0, "alpha":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    return-void

    .line 499
    .end local v0    # "alpha":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 500
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 502
    :cond_1
    mul-float v3, p1, v5

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .restart local v0    # "alpha":I
    goto :goto_0
.end method

.method private updateFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 390
    const-string/jumbo v5, "messenger"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    iput-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    .line 391
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, v5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 394
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 396
    const-string/jumbo v5, "actions"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 397
    .local v0, "actions":Landroid/content/pm/ParceledListSlice;
    if-eqz v0, :cond_0

    .line 398
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 399
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    :cond_0
    const-string/jumbo v5, "menu_state"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 403
    .local v2, "menuState":I
    if-eqz v2, :cond_1

    .line 404
    const-string/jumbo v5, "stack_bounds"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 405
    .local v4, "stackBounds":Landroid/graphics/Rect;
    const-string/jumbo v5, "movement_bounds"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 406
    .local v3, "movementBounds":Landroid/graphics/Rect;
    const-string/jumbo v5, "allow_timeout"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 407
    .local v1, "allowMenuTimeout":Z
    invoke-direct {p0, v2, v4, v3, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 409
    .end local v1    # "allowMenuTimeout":Z
    .end local v3    # "movementBounds":Landroid/graphics/Rect;
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    if-nez v0, :cond_0

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 280
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 264
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 271
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 273
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyRegisterInputConsumer()V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 288
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->overridePendingTransition(II)V

    .line 289
    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_11302(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$7;

    invoke-direct {v1, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_21755()V
    .locals 2

    .prologue
    .line 532
    const-string/jumbo v0, "Could not notify controller to expand PIP"

    .line 531
    const/16 v1, 0x65

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_22313()V
    .locals 2

    .prologue
    .line 546
    const-string/jumbo v0, "Could not notify controller to dismiss PIP"

    .line 545
    const/16 v1, 0x67

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_7641(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showPipMenu()V

    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_7938(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dismissPip()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 297
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 301
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    const/4 v1, 0x1

    .line 301
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 307
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20040000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v0, 0x7f0d00ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setContentView(I)V

    .line 181
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const v0, 0x7f0a019a

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 201
    const v1, 0x7f070206

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    .line 202
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 205
    const v0, 0x7f11038d

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setTitle(I)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setDisablePreviewScreenshots(Z)V

    .line 207
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 246
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 253
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 236
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    .line 218
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    .line 220
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    .line 229
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 294
    return-void
.end method
