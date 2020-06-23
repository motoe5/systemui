.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$1;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEcaView:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "-value"    # Landroid/os/AsyncTask;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->showMaxUnlockPolicyMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardPatternView;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v9, 0x10c000f

    const v8, 0x3f99999a    # 1.2f

    const v7, 0x3f19999a    # 0.6f

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 81
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 86
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 111
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    .line 113
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 112
    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 113
    const/high16 v5, 0x40000000    # 2.0f

    move-object v1, p1

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 115
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 116
    const-wide/16 v2, 0x7d

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    move v4, v8

    move v5, v7

    .line 115
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 119
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 122
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 120
    const-wide/16 v2, 0xbb

    move-object v1, p1

    move v4, v8

    move v5, v7

    .line 119
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    const v1, 0x7f070082

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    .line 125
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipChildren(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 502
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 351
    .local v6, "elapsedRealtime":J
    sub-long v0, p1, v6

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 350
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v8, v0

    .line 352
    .local v8, "secondsInFuture":J
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    mul-long v2, v8, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 368
    return-void
.end method

.method private showMaxUnlockPolicyMessage()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 329
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 330
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 331
    const/4 v5, 0x0

    .line 330
    invoke-virtual {v4, v5, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 332
    .local v1, "maxAttempts":I
    if-lez v1, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 336
    .local v0, "attempts":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1102cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 337
    const v6, 0x7f1102ce

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 339
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 340
    return v8

    .line 342
    .end local v0    # "attempts":I
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    return v6
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "animatedCell"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 510
    if-eqz p7, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 511
    :goto_0
    if-eqz p7, :cond_2

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_3

    const/4 v5, 0x0

    .line 512
    :goto_2
    if-eqz p7, :cond_4

    const/4 v6, 0x0

    .line 510
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 512
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 509
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 514
    if-eqz p9, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 517
    const/4 v9, 0x0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 516
    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 519
    :cond_0
    return-void

    .line 510
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 511
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move/from16 v5, p6

    goto :goto_2

    .line 512
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    .prologue
    move-object v1, p1

    .line 504
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPatternView_19814(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 483
    if-eqz p1, :cond_0

    .line 484
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 164
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 140
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 140
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    const v1, 0x7f0a0186

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 144
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 151
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 150
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 152
    const v1, 0x7f0a0148

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 153
    const v1, 0x7f0a008c

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    .line 155
    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 156
    .local v0, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 159
    :cond_0
    return-void

    .line 141
    .end local v0    # "button":Lcom/android/keyguard/EmergencyButton;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 379
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 383
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 385
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 390
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 171
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 172
    .local v0, "elapsed":J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 177
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 178
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    .end local v2    # "result":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 180
    return v2

    .line 178
    .restart local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .local v2, "result":Z
    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 187
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 186
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 189
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 193
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 194
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 193
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 195
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 130
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public showPromptReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 426
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const v2, 0x7f1102bd

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 429
    :goto_0
    :pswitch_1
    return-void

    .line 403
    :pswitch_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 404
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    .line 405
    .local v0, "fpAvailable":Z
    if-nez v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const v2, 0x7f1102b7

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 416
    .end local v0    # "fpAvailable":Z
    :cond_0
    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 417
    const v2, 0x7f1102b4

    .line 416
    invoke-virtual {v1, v2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessageWithMoreInfoButton(II)V

    goto :goto_0

    .line 421
    :pswitch_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const v2, 0x7f1102bf

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public startAppearAnimation()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 440
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 442
    const-wide/16 v4, 0x1f4

    .line 443
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    .line 442
    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 445
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    .line 446
    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 444
    invoke-virtual {v0, v1, v4, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 456
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v4}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v6

    .line 458
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v4}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 455
    const-wide/16 v4, 0xdc

    .line 457
    const/4 v7, 0x1

    .line 459
    const/4 v9, 0x0

    .line 454
    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 461
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 13
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v12, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 468
    .local v11, "durationMultiplier":F
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 469
    invoke-direct {p0, v12}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 472
    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v0, v11

    float-to-long v4, v0

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v0

    neg-float v6, v0

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    .line 471
    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v10, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 480
    .local v10, "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    .line 481
    new-instance v1, Lcom/android/keyguard/-$Lambda$oZunCo7YRnWwHfeo9lRYuShasms;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$Lambda$oZunCo7YRnWwHfeo9lRYuShasms;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    invoke-virtual {v10, v0, v1, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 489
    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v4, v11

    float-to-long v4, v4

    .line 490
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v6

    neg-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    .line 492
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 493
    const/4 v9, 0x0

    move v7, v12

    .line 488
    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 495
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 467
    .end local v10    # "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    .end local v11    # "durationMultiplier":F
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    .restart local v11    # "durationMultiplier":F
    goto :goto_0

    .line 479
    :cond_2
    iget-object v10, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .restart local v10    # "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    goto :goto_1
.end method
