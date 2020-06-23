.class public Lcom/android/systemui/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipTouchHandler$1;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$2;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$3;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mDeferResizeToNormalBoundsUntilRotation:I

.field private final mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

.field private mDisplayRotation:I

.field private mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedMovementBounds:Landroid/graphics/Rect;

.field private mExpandedShortestEdgeSize:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsMinimized:Z

.field private final mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

.field private mMenuState:I

.field private final mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mMovementBounds:Landroid/graphics/Rect;

.field private mMovementWithinDismiss:Z

.field private mMovementWithinMinimize:Z

.field private mNormalBounds:Landroid/graphics/Rect;

.field private mNormalMovementBounds:Landroid/graphics/Rect;

.field private mPinnedStackController:Landroid/view/IPinnedStackController;

.field private mSavedSnapFraction:F

.field private mSendingHoverAccessibilityEvents:Z

.field private mShowDismissAffordance:Ljava/lang/Runnable;

.field private mShowPipMenuOnAnimationEnd:Z

.field private final mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/pip/phone/InputConsumerController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "menuController"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p4, "inputConsumerController"    # Lcom/android/systemui/pip/phone/InputConsumerController;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    .line 84
    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$2;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 110
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 123
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 546
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 178
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    .line 180
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 182
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    .line 184
    new-instance v0, Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-direct {v0, p1}, Lcom/android/systemui/pip/phone/PipDismissViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    .line 185
    new-instance v0, Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 186
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchState;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    .line 187
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 189
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    aput-object v1, v0, v2

    .line 188
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 191
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 192
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    const v1, 0x7f07020a

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    .line 197
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->setTouchListener(Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;)V

    .line 198
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->setRegistrationListener(Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;)V

    .line 199
    invoke-virtual {p4}, Lcom/android/systemui/pip/phone/InputConsumerController;->isRegistered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    .line 200
    return-void
.end method

.method private cleanUpDismissTarget()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->destroyDismissTarget()V

    .line 744
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 333
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-nez v5, :cond_0

    .line 334
    return v3

    .line 338
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 410
    :cond_1
    :goto_0
    :pswitch_0
    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-nez v5, :cond_6

    :goto_1
    return v3

    .line 342
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 344
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 345
    .local v1, "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, v8}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 350
    .end local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 351
    .restart local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, v8}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 360
    .end local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :pswitch_3
    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 362
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v7, v6

    move v5, v4

    :goto_4
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    .line 363
    .restart local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, v8}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 371
    .end local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :cond_2
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    goto :goto_0

    .line 362
    .restart local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 376
    .end local v1    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :pswitch_5
    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v5, :cond_1

    .line 378
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 380
    const/16 v5, 0x80

    .line 379
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 382
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 383
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 384
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 385
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 388
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_0

    .line 393
    :pswitch_6
    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v5, :cond_1

    .line 395
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 397
    const/16 v5, 0x100

    .line 396
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 399
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 400
    .restart local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 401
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 402
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 405
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 410
    goto/16 :goto_1

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onAccessibilityShowMenu()V
    .locals 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 327
    const/4 v3, 0x2

    .line 328
    const/4 v4, 0x0

    .line 327
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 329
    return-void
.end method

.method private onRegistrationChanged(Z)V
    .locals 5
    .param p1, "isRegistered"    # Z

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_1

    .line 316
    new-instance v0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 317
    new-instance v3, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$2;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    .line 316
    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V

    .line 315
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 319
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    .line 324
    :cond_0
    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMovementBounds(I)V
    .locals 4
    .param p1, "menuState"    # I

    .prologue
    .line 727
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 728
    .local v1, "isMenuExpanded":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 729
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 728
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 732
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    :goto_2
    invoke-interface {v3, v2}, Landroid/view/IPinnedStackController;->setMinEdgeSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_3
    return-void

    .line 727
    .end local v1    # "isMenuExpanded":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isMenuExpanded":Z
    goto :goto_0

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 732
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipTouchHandler"

    const-string/jumbo v3, "Could not set minimized state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method synthetic -com_android_systemui_pip_phone_PipTouchHandler-mthref-0(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_pip_phone_PipTouchHandler-mthref-1(Z)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method synthetic -com_android_systemui_pip_phone_PipTouchHandler-mthref-2()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onAccessibilityShowMenu()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipTouchHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mNormalBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mNormalMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mExpandedBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mExpandedMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMenuState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsImeShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mImeHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mSavedSnapFraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mEnableDragToEdgeDismiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mEnableMinimize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pip/phone/PipTouchState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method public onActivityPinned()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 223
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 239
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 243
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 244
    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 15
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustement"    # Z
    .param p5, "displayRotation"    # I

    .prologue
    .line 249
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 250
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 251
    .local v13, "normalMovementBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 252
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 251
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v13, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 256
    .local v8, "aspectRatio":F
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 257
    .local v10, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 259
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v4, v10, Landroid/graphics/Point;->y:I

    .line 258
    invoke-virtual {v1, v8, v2, v3, v4}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v12

    .line 260
    .local v12, "expandedSize":Landroid/util/Size;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 262
    .local v11, "expandedMovementBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 263
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 262
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v11, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 268
    if-eqz p4, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 299
    :cond_0
    :goto_2
    iput-object v13, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 300
    iput-object v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 301
    move/from16 v0, p5

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    .line 302
    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 305
    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 307
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    .line 308
    const/4 v7, 0x1

    move-object/from16 v2, p2

    .line 306
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 309
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 310
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 312
    :cond_1
    return-void

    .line 252
    .end local v8    # "aspectRatio":F
    .end local v10    # "displaySize":Landroid/graphics/Point;
    .end local v11    # "expandedMovementBounds":Landroid/graphics/Rect;
    .end local v12    # "expandedSize":Landroid/util/Size;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 263
    .restart local v8    # "aspectRatio":F
    .restart local v10    # "displaySize":Landroid/graphics/Point;
    .restart local v11    # "expandedMovementBounds":Landroid/graphics/Rect;
    .restart local v12    # "expandedSize":Landroid/util/Size;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 273
    :cond_4
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 274
    .local v9, "bounds":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 275
    move-object v14, v11

    .line 277
    .local v14, "toMovementBounds":Landroid/graphics/Rect;
    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v1, :cond_8

    .line 279
    iget v1, v9, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_7

    .line 282
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 293
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1, v9}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToIMEOffset(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 276
    .end local v14    # "toMovementBounds":Landroid/graphics/Rect;
    :cond_6
    move-object v14, v13

    .restart local v14    # "toMovementBounds":Landroid/graphics/Rect;
    goto :goto_3

    .line 284
    :cond_7
    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 288
    :cond_8
    iget v1, v9, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_5

    .line 290
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 230
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 234
    :cond_0
    return-void
.end method

.method setMenuState(IZ)V
    .locals 13
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v3, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 482
    if-ne p1, v12, :cond_3

    .line 486
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 487
    .local v9, "expandedBounds":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 489
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 488
    invoke-virtual {v0, v9, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 528
    .end local v9    # "expandedBounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .line 529
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 530
    if-eq p1, v10, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 532
    if-ne p1, v12, :cond_1

    move v6, v10

    .line 531
    :cond_1
    const/16 v2, 0x337

    invoke-static {v0, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 534
    :cond_2
    return-void

    .line 491
    :cond_3
    if-nez p1, :cond_0

    .line 494
    if-eqz p2, :cond_5

    .line 495
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v0, v3, :cond_4

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    invoke-interface {v0}, Landroid/view/IPinnedStackController;->getDisplayRotation()I

    move-result v7

    .line 506
    .local v7, "displayRotation":I
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    if-eq v0, v7, :cond_4

    .line 507
    iput v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v7    # "displayRotation":I
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v0, v3, :cond_0

    .line 515
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 516
    .local v1, "normalBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 517
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    .line 516
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 519
    iput v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_0

    .line 509
    .end local v1    # "normalBounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v8

    .line 510
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipTouchHandler"

    const-string/jumbo v2, "Could not get display rotation from controller"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 524
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 525
    iput v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_0
.end method

.method setMinimizedState(ZZ)V
    .locals 0
    .param p1, "isMinimized"    # Z
    .param p2, "fromController"    # Z

    .prologue
    .line 454
    return-void
.end method

.method setMinimizedStateInternal(Z)V
    .locals 0
    .param p1, "isMinimized"    # Z

    .prologue
    .line 444
    return-void
.end method

.method setPinnedStackController(Landroid/view/IPinnedStackController;)V
    .locals 0
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    .line 437
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->setAllowTouches(Z)V

    .line 204
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 209
    const/4 v3, 0x2

    .line 210
    const/4 v4, 0x0

    .line 209
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method updateDismissFraction()V
    .locals 6

    .prologue
    .line 417
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    if-eqz v4, :cond_2

    .line 418
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 419
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 420
    .local v3, "target":F
    const/4 v2, 0x0

    .line 421
    .local v2, "fraction":F
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    .line 422
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float v1, v4, v3

    .line 423
    .local v1, "distance":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 425
    .end local v1    # "distance":F
    :cond_0
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-eqz v4, :cond_2

    .line 427
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v4, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setDismissFraction(F)V

    .line 430
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "fraction":F
    .end local v3    # "target":F
    :cond_2
    return-void
.end method
