.class public Lcom/android/systemui/recents/views/TaskView;
.super Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$1;,
        Lcom/android/systemui/recents/views/TaskView$2;,
        Lcom/android/systemui/recents/views/TaskView$3;,
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_OUTLINE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionButtonTranslationZ:F

.field private mActionButtonView:Landroid/view/View;

.field private mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field private mClipViewInStack:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAnimator:Landroid/animation/ObjectAnimator;

.field private mDisabledAppToast:Landroid/widget/Toast;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIncompatibleAppToastView:Landroid/view/View;

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mOutlineAnimator:Landroid/animation/ObjectAnimator;

.field private mRecentsLockToAppMargin:F

.field private final mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field private mTaskBound:Z

.field protected mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;

.field private mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "view_bounds_"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/model/Task;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    const-string/jumbo v1, "dimAlphaWithoutHeader"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Ljava/lang/String;)V

    .line 83
    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    .line 101
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$2;

    const-string/jumbo v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Ljava/lang/String;)V

    .line 100
    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    .line 118
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$3;

    const-string/jumbo v1, "viewOutlineAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Ljava/lang/String;)V

    .line 117
    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 149
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    .line 161
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    .line 185
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 186
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->createOutlineProvider()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 188
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 192
    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 197
    const v2, 0x7f070271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskView;->mRecentsLockToAppMargin:F

    .line 200
    return-void
.end method

.method private cancelDimAnimationIfExists()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 397
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTransformAnimation()V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 391
    return-void
.end method

.method protected createOutlineProvider()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 227
    const v2, 0x7f07027e

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method dismissTask()V
    .locals 3

    .prologue
    .line 422
    move-object v1, p0

    .line 423
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v0, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    .line 424
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 432
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 433
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "TaskView"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    const-string/jumbo v1, " mTask="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 758
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 760
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 761
    return-void
.end method

.method public getDimAlpha()F
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    return v0
.end method

.method public getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "fadeOut"    # Z
    .param p2, "fadeOutDuration"    # I
    .param p3, "scaleDown"    # Z
    .param p4, "animListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 532
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 533
    if-eqz p3, :cond_0

    .line 534
    const v0, 0x3f666666    # 0.9f

    .line 535
    .local v0, "toScale":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 539
    .end local v0    # "toScale":F
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 541
    int-to-long v2, p2

    .line 539
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 542
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 539
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 543
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 560
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    if-eqz p4, :cond_1

    .line 557
    invoke-interface {p4, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .locals 1
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_29100()V
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_29513()V
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method protected measureContents(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 298
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 299
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 300
    .local v1, "heightWithoutPadding":I
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 301
    .local v2, "widthSpec":I
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 304
    .local v0, "heightSpec":I
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->measureChildren(II)V

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 307
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    .line 748
    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 737
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 743
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 681
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 683
    .local v6, "context":Landroid/content/Context;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v1, v0, v2

    const v1, 0x7f110427

    invoke-virtual {v6, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 684
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 687
    :cond_0
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    return-void

    .line 692
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 693
    .local v5, "screenPinningRequested":Z
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 696
    const/4 v5, 0x1

    .line 698
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    const/16 v2, 0x115

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 703
    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 259
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 238
    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 239
    const v0, 0x7f0a029f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    .line 241
    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    .line 252
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 293
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 709
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 710
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v1, 0x0

    .line 711
    .local v1, "inBounds":Z
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 712
    .local v0, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 715
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 720
    .end local v1    # "inBounds":Z
    :goto_0
    if-ne p1, p0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 722
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 724
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v5

    sub-float v5, v7, v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 725
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v5

    sub-float v5, v7, v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 727
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 728
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-direct {v4, v5, p0, v6}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 729
    const/4 v3, 0x1

    return v3

    .line 718
    .restart local v1    # "inBounds":Z
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 731
    .end local v1    # "inBounds":Z
    :cond_2
    return v5
.end method

.method public onPrepareLaunchTargetForEnterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlphaWithoutHeader(F)V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 573
    :cond_0
    return-void
.end method

.method onReload(Z)V
    .locals 1
    .param p1, "isResumingFromVisible"    # Z

    .prologue
    .line 211
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 217
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    .line 264
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mRecentsLockToAppMargin:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mRecentsLockToAppMargin:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 281
    :cond_0
    return-void
.end method

.method public onStartFrontTaskEnterAnimation(Z)V
    .locals 1
    .param p1, "screenPinningEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 621
    if-eqz p1, :cond_0

    .line 622
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 624
    :cond_0
    return-void
.end method

.method public onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "screenPinningEnabled"    # Z
    .param p4, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    .line 581
    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 582
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 584
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    .line 583
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    aput v3, v2, v4

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v3, v2, v5

    .line 583
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 585
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 588
    if-eqz p3, :cond_0

    .line 589
    invoke-virtual {p0, v5, p2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 595
    const/high16 v2, 0x3f800000    # 1.0f

    .line 594
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 596
    int-to-long v2, p2

    .line 594
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 597
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 594
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 600
    :cond_1
    return-void
.end method

.method public onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6
    .param p1, "duration"    # I
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    const/4 v5, 0x1

    .line 605
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 608
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 610
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    .line 609
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 609
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 611
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 613
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 615
    xor-int/lit8 v1, p2, 0x1

    .line 616
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 614
    invoke-virtual {p0, v5, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 617
    return-void
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "touchExplorationEnabled"    # Z
    .param p3, "displayOrientation"    # I
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 630
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 631
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    .line 632
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    .line 634
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v2, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 635
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    .line 636
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v2, v4, v5, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 637
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 639
    iget-boolean v2, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 642
    const v2, 0x7f0a0121

    .line 641
    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    .line 643
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 644
    .local v0, "msg":Landroid/widget/TextView;
    const v2, 0x7f1101d3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 646
    .end local v0    # "msg":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 650
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 635
    goto :goto_0

    .line 647
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 659
    :cond_0
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    .line 668
    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 4

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 675
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 417
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->reset()V

    .line 363
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Lcom/android/systemui/recents/views/TaskView;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_0
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 205
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 450
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 455
    :cond_0
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 1
    .param p1, "dimAlpha"    # F

    .prologue
    .line 465
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 466
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 468
    return-void
.end method

.method public setDimAlphaWithoutHeader(F)V
    .locals 1
    .param p1, "dimAlpha"    # F

    .prologue
    .line 474
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 475
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 476
    return-void
.end method

.method public setFocusedState(ZZ)V
    .locals 1
    .param p1, "isFocused"    # Z
    .param p2, "requestViewFocus"    # Z

    .prologue
    .line 489
    if-eqz p1, :cond_1

    .line 490
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    goto :goto_0
.end method

.method setNoUserInteractionState()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 412
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 401
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    return v1

    .line 444
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    return v0
.end method

.method public showActionButton(ZI)V
    .locals 4
    .param p1, "fadeIn"    # Z
    .param p2, "fadeInDuration"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 507
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 514
    int-to-long v2, p2

    .line 510
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 515
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 510
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 523
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0
.end method

.method public startNoUserInteractionAnimation()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 407
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 9
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "toAnimation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 311
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 312
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 315
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, p0, v2, p2, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 317
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 325
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 328
    :cond_2
    if-eqz p3, :cond_3

    .line 329
    invoke-interface {p3, v4}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 354
    :cond_3
    :goto_0
    return-void

    .line 333
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    .line 334
    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v4

    aput v4, v3, v5

    .line 335
    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v4, v3, v6

    .line 334
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 336
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v3}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    .line 339
    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    .line 340
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    aput v4, v3, v6

    .line 339
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    .line 341
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v3}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_6
    if-eqz p3, :cond_7

    .line 344
    filled-new-array {v5, v6}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 345
    .local v1, "updateCallbackAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v7, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v1    # "updateCallbackAnim":Landroid/animation/ValueAnimator;
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lcom/android/systemui/recents/views/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    .line 351
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 352
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto/16 :goto_0
.end method
