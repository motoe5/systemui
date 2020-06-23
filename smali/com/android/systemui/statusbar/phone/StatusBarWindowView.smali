.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mFakeWindow:Landroid/view/Window;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mLeftInset:I

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mRightInset:I

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p1, "-value"    # Landroid/view/ActionMode;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 508
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$N_OtJ8HKQ17eyDg8Dp9cEYfCWls$1;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 102
    return-void
.end method

.method private applyMargins()V
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getChildCount()I

    move-result v0

    .line 143
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    if-eqz v4, :cond_1

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    .line 147
    .local v3, "lp":Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v4, :cond_1

    .line 148
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v4, v5, :cond_1

    .line 149
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->rightMargin:I

    .line 150
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->leftMargin:I

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 143
    .end local v3    # "lp":Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 442
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 446
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 448
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 450
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 452
    :cond_2
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    .line 417
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 419
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 420
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 422
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    .line 421
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 429
    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarWindowView_3819(Z)V
    .locals 0
    .param p0, "active"    # Z

    .prologue
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 437
    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 456
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode$Callback;)V

    .line 457
    .local v1, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    .line 458
    .local v0, "mode":Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 463
    .end local v0    # "mode":Landroid/view/ActionMode;
    :goto_0
    return-object v0

    .line 461
    .restart local v0    # "mode":Landroid/view/ActionMode;
    :cond_0
    const/4 v0, 0x0

    .local v0, "mode":Landroid/view/ActionMode;
    goto :goto_0
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    if-eqz v2, :cond_0

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 376
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 375
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 377
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 378
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 379
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 380
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    .line 382
    .end local v0    # "now":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    .line 370
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    return v3

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    return v3

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 222
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 247
    :cond_2
    return v2

    .line 221
    .end local v0    # "down":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 225
    :sswitch_0
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    .line 228
    :cond_4
    return v3

    .line 230
    :sswitch_1
    if-nez v0, :cond_5

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result v1

    return v1

    .line 234
    :cond_5
    :sswitch_2
    if-nez v0, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result v1

    return v1

    .line 240
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    .line 242
    const/high16 v2, -0x80000000

    .line 241
    invoke-virtual {v1, p1, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 243
    return v3

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 253
    .local v0, "isDown":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startExpandLatencyTracking()V

    .line 256
    :cond_0
    if-eqz v0, :cond_3

    .line 257
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    .line 258
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    .line 263
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    if-eqz v1, :cond_5

    .line 264
    return v4

    .line 252
    .end local v0    # "isDown":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isDown":Z
    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 261
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    goto :goto_1

    .line 266
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/classifier/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 272
    return v4

    .line 275
    :cond_6
    if-eqz v0, :cond_7

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 278
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    .line 282
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 108
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v3

    if-eq v2, v3, :cond_4

    const/4 v1, 0x1

    .line 111
    .local v1, "paddingChanged":Z
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v2, v3, :cond_1

    .line 112
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 113
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    .line 117
    :cond_1
    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    .line 120
    :cond_2
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 122
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 138
    .end local v1    # "paddingChanged":Z
    :goto_1
    return v4

    .line 107
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "paddingChanged":Z
    goto :goto_0

    .line 108
    .end local v1    # "paddingChanged":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "paddingChanged":Z
    goto :goto_0

    .line 124
    .end local v1    # "paddingChanged":Z
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eqz v2, :cond_7

    .line 125
    :cond_6
    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 126
    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v2

    if-nez v2, :cond_8

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    if-eqz v2, :cond_a

    .line 129
    :cond_8
    const/4 v0, 0x1

    .line 133
    .local v0, "changed":Z
    :goto_2
    if-eqz v0, :cond_9

    .line 134
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    .line 136
    :cond_9
    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 131
    .end local v0    # "changed":Z
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    if-nez v2, :cond_8

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_2

    .end local v0    # "changed":Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 159
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarWindowView_3833()Z
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScrimSrcModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 203
    .local v1, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 204
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 211
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "windowToken":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScrimSrcModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    sub-int v6, v0, v2

    .line 341
    .local v6, "paddedBottom":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    sub-int v7, v0, v2

    .line 342
    .local v7, "paddedRight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    .line 350
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 349
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    int-to-float v1, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    .line 354
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 353
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 364
    .end local v6    # "paddedBottom":I
    .end local v7    # "paddedRight":I
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 171
    const v0, 0x7f0a01ef

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 172
    const v0, 0x7f0a01ea

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 173
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 174
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 289
    return v3

    .line 291
    :cond_0
    const/4 v1, 0x0

    .line 292
    .local v1, "intercept":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 292
    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 292
    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 299
    .end local v1    # "intercept":Z
    :cond_1
    if-nez v1, :cond_2

    .line 300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 302
    :cond_2
    if-eqz v1, :cond_3

    .line 303
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 304
    .local v0, "cancellation":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 305
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 307
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 309
    .end local v0    # "cancellation":Landroid/view/MotionEvent;
    :cond_3
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "handled":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 317
    const/4 v1, 0x1

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-ne v2, v4, :cond_1

    xor-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v2

    .line 319
    if-eqz v2, :cond_3

    .line 322
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 324
    .end local v1    # "handled":Z
    :cond_3
    if-nez v1, :cond_4

    .line 325
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 327
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 328
    .local v0, "action":I
    if-nez v1, :cond_6

    if-eq v0, v4, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 329
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 331
    :cond_6
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005d

    if-ne v0, v1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 182
    :cond_0
    return-void
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0
    .param p1, "dragDownHelper"    # Lcom/android/systemui/statusbar/DragDownHelper;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 192
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 4
    .param p1, "service"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 186
    new-instance v0, Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    .line 187
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 405
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 406
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 408
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
