.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;
    }
.end annotation


# instance fields
.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/GlobalScreenshot;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "-value"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 490
    .local v11, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 492
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 491
    check-cast v9, Landroid/view/LayoutInflater;

    .line 495
    .local v9, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 496
    const v0, 0x7f0d0031

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0a00e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 498
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 499
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0a00ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 501
    const v2, 0x7f0a00eb

    .line 500
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 502
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setFocusable(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setFocusableInTouchMode(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 516
    const/16 v5, 0x7f4

    .line 517
    const v6, 0x1080500

    .line 521
    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    .line 514
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 522
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 523
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 525
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 524
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 526
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 527
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 528
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 532
    const v0, 0x1050006

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 531
    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 535
    const v0, 0x7f070094

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 536
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 539
    const/4 v10, 0x0

    .line 541
    .local v10, "panelWidth":I
    const v0, 0x7f0701e6

    :try_start_0
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 544
    :goto_0
    if-gtz v10, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 548
    :cond_0
    iput v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewWidth:I

    .line 549
    const v0, 0x7f0701dc

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewHeight:I

    .line 552
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 553
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 554
    return-void

    .line 542
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 8

    .prologue
    .line 806
    const v3, 0x3e9aca6b

    .line 808
    .local v3, "flashPeakDurationPct":F
    const v2, 0x3f1aca6b

    .line 809
    .local v2, "flashDurationPct":F
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 819
    .local v1, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 829
    .local v4, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 830
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x1ae

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 831
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 850
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 864
    return-object v0

    .line 829
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 868
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 869
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 870
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 879
    if-eqz p3, :cond_0

    xor-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_1

    .line 881
    :cond_0
    const-wide/16 v8, 0x140

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 882
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 935
    :goto_0
    return-object v0

    .line 896
    :cond_1
    const v5, 0x3f5c4771

    .line 898
    .local v5, "scaleDurationPct":F
    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 910
    .local v6, "scaleInterpolator":Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    iget v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 911
    .local v3, "halfScreenWidth":F
    int-to-float v7, p2

    iget v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 912
    .local v2, "halfScreenHeight":F
    const/4 v4, 0x0

    .line 913
    .local v4, "offsetPct":F
    new-instance v1, Landroid/graphics/PointF;

    .line 914
    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    .line 915
    neg-float v8, v2

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 913
    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 918
    .local v1, "finalPos":Landroid/graphics/PointF;
    const-wide/16 v8, 0x1ae

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 919
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v7, p0, v6, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 868
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_0

    .line 596
    const/4 v0, 0x0

    return v0

    .line 590
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    .line 592
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 594
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    .line 588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;
    .param p2, "msgResId"    # I

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 940
    .local v11, "r":Landroid/content/res/Resources;
    invoke-virtual {v11, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, "errorMsg":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 944
    const v1, 0x7f110453

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 945
    const v1, 0x7f110453

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 947
    const v1, 0x7f080306

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 943
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 949
    const/4 v1, 0x1

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 950
    const-string/jumbo v1, "err"

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 951
    const/4 v1, 0x1

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 953
    const v1, 0x1060149

    .line 952
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 955
    .local v6, "b":Landroid/app/Notification$Builder;
    const-string/jumbo v0, "device_policy"

    .line 954
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 957
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v0, "policy_disable_screen_capture"

    .line 956
    invoke-virtual {v7, v0}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 958
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 960
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 959
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 961
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 964
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-static {p0, v6}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 966
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v9

    .line 969
    .local v9, "n":Landroid/app/Notification;
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 970
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 564
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 565
    .local v0, "data":Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 566
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 567
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 568
    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 569
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 570
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 573
    iput-object p2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->reqBundle:Landroid/os/Bundle;

    .line 576
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 579
    :cond_0
    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    .line 581
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z
    .param p6, "reqBundle"    # Landroid/os/Bundle;

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 759
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 762
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 769
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 771
    .local v0, "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 773
    .local v1, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 774
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 775
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v3, p0, p1, p6}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 793
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 804
    return-void
.end method


# virtual methods
.method stopScreenshot()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 744
    :cond_0
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIIIILandroid/os/Message;)V
    .locals 17
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "msg"    # Landroid/os/Message;

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 610
    const-string/jumbo v4, "ScreenShot"

    const-string/jumbo v5, "There is one uncompleted screen shot! will not start new one."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 612
    return-void

    .line 618
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 619
    const/4 v4, 0x2

    new-array v14, v4, [F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v14, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v14, v5

    .line 620
    .local v14, "dims":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v13

    .line 621
    .local v13, "degrees":F
    const/4 v4, 0x0

    cmpl-float v4, v13, v4

    if-lez v4, :cond_2

    const/4 v15, 0x1

    .line 622
    .local v15, "requiresRotation":Z
    :goto_0
    if-eqz v15, :cond_1

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v13

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 627
    const/4 v4, 0x0

    aget v4, v14, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v14, v5

    .line 628
    const/4 v4, 0x1

    aget v4, v14, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v14, v5

    .line 632
    :cond_1
    const/4 v4, 0x0

    aget v4, v14, v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 635
    const v6, 0x7f110454

    .line 634
    invoke-static {v4, v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 636
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 637
    return-void

    .line 621
    .end local v15    # "requiresRotation":Z
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "requiresRotation":Z
    goto :goto_0

    .line 640
    :cond_3
    if-eqz v15, :cond_4

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 643
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 642
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 644
    .local v16, "ss":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 645
    .local v11, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v11, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    invoke-virtual {v11, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 647
    const/4 v4, 0x0

    aget v4, v14, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v11, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 649
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 652
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 655
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v16    # "ss":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, p6

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, p7

    if-eq v0, v4, :cond_6

    .line 657
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 658
    .local v12, "cropped":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 663
    .end local v12    # "cropped":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 672
    if-eqz p8, :cond_7

    invoke-virtual/range {p8 .. p8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 671
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZLandroid/os/Bundle;)V

    .line 674
    return-void

    .line 672
    :cond_7
    const/4 v10, 0x0

    goto :goto_1
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZLandroid/os/Message;)V
    .locals 9
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 679
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 681
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v8, p4

    .line 680
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZIIIILandroid/os/Message;)V

    .line 683
    return-void
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
    .locals 3
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 733
    return-void
.end method
