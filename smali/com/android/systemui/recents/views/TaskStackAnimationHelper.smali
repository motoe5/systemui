.class public Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mEnterAndExitFromHomeTranslationOffset:I

.field private mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTmpCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 85
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 89
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 88
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 93
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 96
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 99
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 98
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 101
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 100
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 104
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 103
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 115
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 115
    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    .line 117
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x21

    goto :goto_0
.end method

.method private calculateStaggeredAnimDuration(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/16 v1, 0x64

    .line 612
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_30213(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p0, "touchHandler"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_30498(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "dismissSize"    # F
    .param p2, "touchHandler"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 643
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 644
    .local v0, "progress":F
    mul-float v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 645
    const/4 v1, 0x1

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateSwipeProgress(Landroid/view/View;ZF)Z

    return-void
.end method

.method private startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 4
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    const v1, 0x3f666666    # 0.9f

    .line 617
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 618
    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 621
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 622
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 627
    return-void
.end method

.method private startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 12
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v11, 0x0

    .line 658
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    .line 660
    .local v2, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v1, v8, v9

    .line 662
    .local v1, "offscreenXOffset":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 663
    .local v6, "taskViewCount":I
    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 664
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 665
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    sub-int v8, v6, v0

    add-int/lit8 v5, v8, -0x1

    .line 666
    .local v5, "taskIndexFromFront":I
    mul-int/lit8 v3, v5, 0x21

    .line 669
    .local v3, "startDelay":I
    invoke-virtual {v7, v11}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 672
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    .line 673
    sget-object v8, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 674
    new-instance v9, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;

    invoke-direct {v9, p0, p2, v7}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 673
    const/16 v10, 0xc8

    .line 672
    invoke-direct {v4, v3, v10, v8, v9}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    .local v4, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 685
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 686
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 687
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v7, v9, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 663
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 689
    .end local v3    # "startDelay":I
    .end local v4    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v5    # "taskIndexFromFront":I
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method private startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 631
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v2

    .line 632
    .local v2, "touchHandler":Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V

    .line 634
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 635
    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$1;

    invoke-direct {v3, v2, p1}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 639
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v1

    .line 640
    .local v1, "dismissSize":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 641
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 642
    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;

    invoke-direct {v3, v1, p1, v2}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;-><init>(FLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 647
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 653
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 654
    return-void

    .line 640
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_29395(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method public prepareForEnterAnimation()V
    .locals 27

    .prologue
    .line 124
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 125
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v11

    .line 126
    .local v11, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 127
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 129
    .local v5, "appResources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 130
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    .line 131
    .local v19, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    .line 132
    .local v17, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    .line 135
    .local v12, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v24

    if-nez v24, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 141
    .local v14, "offscreenYOffset":I
    const v24, 0x7f070275

    .line 140
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 143
    .local v21, "taskViewAffiliateGroupEnterOffset":I
    const v24, 0x7f070276

    .line 142
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 144
    .local v13, "launchedWhileDockingOffset":I
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    .line 145
    const/16 v25, 0x2

    .line 144
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 148
    .local v10, "isLandscape":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v22

    .line 149
    .local v22, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v9, v24, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_a

    .line 150
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskView;

    .line 151
    .local v23, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    .line 152
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v12, :cond_3

    .line 153
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 154
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    .line 155
    :goto_2
    if-eqz v12, :cond_4

    .line 156
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v24

    .line 155
    if-eqz v24, :cond_4

    .line 157
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v8

    .line 160
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    .line 161
    const/16 v26, 0x0

    .line 160
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 163
    if-eqz v8, :cond_5

    .line 164
    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 149
    :cond_1
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 144
    .end local v9    # "i":I
    .end local v10    # "isLandscape":Z
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isLandscape":Z
    goto :goto_0

    .line 152
    .restart local v9    # "i":I
    .restart local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    const/4 v7, 0x0

    .local v7, "currentTaskOccludesLaunchTarget":Z
    goto :goto_2

    .line 155
    .end local v7    # "currentTaskOccludesLaunchTarget":Z
    :cond_4
    const/4 v8, 0x0

    .local v8, "hideTask":Z
    goto :goto_3

    .line 165
    .end local v8    # "hideTask":Z
    :cond_5
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v24, v0

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_7

    .line 166
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 167
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->onPrepareLaunchTargetForEnterAnimation()V

    goto :goto_4

    .line 168
    :cond_6
    if-eqz v7, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    .line 173
    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 172
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 174
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    goto :goto_4

    .line 176
    :cond_7
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    int-to-float v0, v14

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_4

    .line 181
    :cond_8
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 182
    if-eqz v10, :cond_9

    .line 183
    move v15, v13

    .line 185
    .local v15, "offset":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    int-to-float v0, v15

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_4

    .line 184
    .end local v15    # "offset":I
    :cond_9
    int-to-float v0, v14

    move/from16 v24, v0

    const v25, 0x3f666666    # 0.9f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v15, v0

    .restart local v15    # "offset":I
    goto :goto_5

    .line 190
    .end local v15    # "offset":I
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_a
    return-void
.end method

.method public startDeleteAllTasksAnimation(Ljava/util/List;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 2
    .param p2, "gridLayout"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;Z",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    if-eqz p2, :cond_0

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 416
    :cond_1
    return-void
.end method

.method public startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "gridLayout"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 397
    if-eqz p2, :cond_0

    .line 398
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_0
.end method

.method public startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 30
    .param p1, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 197
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    .line 198
    .local v10, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v14

    .line 199
    .local v14, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 200
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 202
    .local v9, "appRes":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 203
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    .line 204
    .local v19, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    .line 205
    .local v17, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 208
    .local v15, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 209
    return-void

    .line 213
    :cond_0
    const v3, 0x7f0b005b

    .line 212
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    .line 215
    .local v26, "taskViewEnterFromAppDuration":I
    const v3, 0x7f0b005a

    .line 214
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 217
    .local v25, "taskViewEnterFromAffiliatedAppDuration":I
    const v3, 0x7f0b003f

    .line 216
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 220
    .local v12, "dockGestureAnimDuration":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v27

    .line 221
    .local v27, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v24

    .line 222
    .local v24, "taskViewCount":I
    add-int/lit8 v13, v24, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_6

    .line 223
    sub-int v3, v24, v13

    add-int/lit8 v23, v3, -0x1

    .line 224
    .local v23, "taskIndexFromFront":I
    move/from16 v22, v13

    .line 225
    .local v22, "taskIndexFromBack":I
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/recents/views/TaskView;

    .line 226
    .local v28, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    .line 227
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v15, :cond_2

    .line 228
    iget-object v3, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v3, :cond_2

    .line 229
    iget-object v3, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    .line 233
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 234
    const/4 v5, 0x0

    .line 233
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 236
    iget-boolean v3, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 237
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v3, :cond_3

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    .line 238
    move-object/from16 v0, v28

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 222
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 227
    :cond_2
    const/4 v11, 0x0

    .local v11, "currentTaskOccludesLaunchTarget":Z
    goto :goto_1

    .line 243
    .end local v11    # "currentTaskOccludesLaunchTarget":Z
    :cond_3
    if-eqz v11, :cond_1

    .line 244
    new-instance v21, Lcom/android/systemui/recents/views/AnimationProps;

    .line 245
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 246
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 244
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    .local v21, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    .line 258
    .end local v21    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_4
    iget-boolean v3, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v3, :cond_5

    .line 261
    const/4 v3, 0x5

    move/from16 v0, v23

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 262
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    .line 261
    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 263
    const/high16 v4, 0x43960000    # 300.0f

    .line 261
    div-float v8, v3, v4

    .line 264
    .local v8, "startOffsetFraction":F
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 266
    const/4 v4, 0x5

    move/from16 v0, v23

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    .line 265
    const/4 v5, 0x4

    .line 264
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 268
    const/4 v4, 0x6

    const/16 v5, 0x12c

    .line 264
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 269
    const/4 v4, 0x4

    const/16 v5, 0x64

    .line 264
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v29

    .line 271
    new-instance v3, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;-><init>(FFFFF)V

    .line 270
    const/4 v4, 0x6

    .line 264
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 273
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x4

    .line 264
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 264
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v21

    .line 275
    .restart local v21    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 277
    add-int/lit8 v3, v24, -0x1

    if-ne v13, v3, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    goto/16 :goto_2

    .line 280
    .end local v8    # "startOffsetFraction":F
    .end local v21    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_5
    iget-boolean v3, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v3, :cond_1

    .line 282
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 284
    mul-int/lit8 v4, v22, 0x21

    .line 283
    add-int/2addr v4, v12

    const/4 v5, 0x6

    .line 282
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 286
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 285
    const/4 v5, 0x6

    .line 282
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 287
    const/4 v4, 0x6

    const/16 v5, 0x30

    .line 282
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v3

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 282
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v21

    .line 289
    .restart local v21    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_2

    .line 293
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v21    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v22    # "taskIndexFromBack":I
    .end local v23    # "taskIndexFromFront":I
    .end local v28    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_6
    return-void
.end method

.method public startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 14
    .param p1, "animated"    # Z
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 300
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 301
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 304
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    iget-object v11, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 311
    .local v2, "offscreenYOffset":I
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v9

    .line 312
    .local v9, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 313
    .local v8, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 314
    sub-int v11, v8, v1

    add-int/lit8 v7, v11, -0x1

    .line 315
    .local v7, "taskIndexFromFront":I
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    .line 316
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 318
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11, v5}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 313
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    if-eqz p1, :cond_2

    .line 325
    const/4 v11, 0x5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 326
    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    .line 325
    mul-int v0, v11, v12

    .line 327
    .local v0, "delay":I
    new-instance v11, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v11}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 328
    const/4 v12, 0x6

    .line 327
    invoke-virtual {v11, v12, v0}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 329
    const/4 v12, 0x6

    const/16 v13, 0xc8

    .line 327
    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 331
    sget-object v12, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 330
    const/4 v13, 0x6

    .line 327
    invoke-virtual {v11, v13, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 332
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v12

    .line 327
    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v6

    .line 333
    .local v6, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 338
    .end local v0    # "delay":I
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v10}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 339
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    int-to-float v13, v2

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 340
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v10, v12, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 335
    .end local v6    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .restart local v6    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    goto :goto_2

    .line 342
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v7    # "taskIndexFromFront":I
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 16
    .param p1, "launchingTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 353
    .local v5, "res":Landroid/content/res/Resources;
    const v13, 0x7f0b005c

    .line 352
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 355
    .local v10, "taskViewExitToAppDuration":I
    const v13, 0x7f070275

    .line 354
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 357
    .local v8, "taskViewAffiliateGroupEnterOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 358
    .local v4, "launchingTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    .line 359
    .local v11, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 360
    .local v9, "taskViewCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 361
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/views/TaskView;

    .line 362
    .local v12, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    .line 363
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v4, :cond_1

    .line 364
    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v13, :cond_1

    .line 365
    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v13, v6, v4}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    .line 367
    :goto_1
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_2

    .line 368
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 369
    new-instance v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 375
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v10, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 360
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v2, 0x0

    .local v2, "currentTaskOccludesLaunchTarget":Z
    goto :goto_1

    .line 377
    .end local v2    # "currentTaskOccludesLaunchTarget":Z
    :cond_2
    if-eqz v2, :cond_0

    .line 379
    new-instance v7, Lcom/android/systemui/recents/views/AnimationProps;

    .line 380
    sget-object v13, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 381
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v14

    .line 379
    invoke-direct {v7, v10, v13, v14}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    .local v7, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    int-to-float v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12, v14, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    .line 390
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v12    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    return-void
.end method

.method public startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 24
    .param p1, "newStack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "animationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v16

    .line 526
    .local v16, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    .line 529
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 530
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 537
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 538
    .local v3, "newScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 541
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 542
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 543
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    .line 548
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 547
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    .line 552
    .local v11, "frontMostTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v11}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v12

    .line 553
    .local v12, "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 554
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 553
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 555
    .local v13, "frontMostTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 557
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 556
    invoke-virtual {v2, v12, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 562
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v21

    .line 576
    .local v21, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    .line 577
    .local v20, "taskViewCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 578
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskView;

    .line 579
    .local v23, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 581
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 584
    :cond_2
    move-object/from16 v0, v18

    if-ne v0, v11, :cond_3

    if-nez v12, :cond_1

    .line 588
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 589
    .local v19, "taskIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 590
    .local v10, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 593
    .local v22, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 595
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v9

    .line 596
    .local v9, "duration":I
    sget-object v15, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 598
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 599
    const/4 v4, 0x6

    .line 598
    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 600
    const/4 v4, 0x6

    .line 598
    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 601
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 598
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    .line 602
    .local v8, "anim":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 605
    .end local v8    # "anim":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v9    # "duration":I
    .end local v10    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "taskIndex":I
    .end local v22    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    return-void
.end method

.method public startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z
    .locals 28
    .param p1, "newFocusedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "requestViewFocus"    # Z

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 426
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    .line 427
    .local v19, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    .line 429
    .local v17, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    .line 431
    .local v9, "curScroll":F
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    .line 430
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v3

    .line 432
    .local v3, "newScroll":F
    cmpl-float v2, v3, v9

    if-lez v2, :cond_0

    const/16 v27, 0x1

    .line 433
    .local v27, "willScrollToFront":Z
    :goto_0
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v26, 0x1

    .line 436
    .local v26, "willScroll":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    .line 437
    .local v22, "taskViewCount":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 438
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 444
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 445
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    .line 450
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x1

    .line 449
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v15

    .line 454
    .local v15, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-nez v15, :cond_2

    .line 456
    const-string/jumbo v2, "TaskStackAnimationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "b/27389156 null-task-view prebind:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 457
    const-string/jumbo v6, " postbind:"

    .line 456
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 457
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 456
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 457
    const-string/jumbo v6, " prescroll:"

    .line 456
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 458
    const-string/jumbo v6, " postscroll: "

    .line 456
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x0

    return v2

    .line 432
    .end local v5    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v15    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v22    # "taskViewCount":I
    .end local v26    # "willScroll":Z
    .end local v27    # "willScrollToFront":Z
    :cond_0
    const/16 v27, 0x0

    .restart local v27    # "willScrollToFront":Z
    goto/16 :goto_0

    .line 433
    :cond_1
    const/16 v26, 0x0

    .restart local v26    # "willScroll":Z
    goto/16 :goto_1

    .line 461
    .restart local v5    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v15    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v22    # "taskViewCount":I
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 465
    new-instance v16, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 466
    .local v16, "postAnimTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v23

    .line 474
    .local v23, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    .line 475
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 476
    .local v14, "newFocusTaskViewIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_7

    .line 477
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    .line 478
    .local v25, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    .line 480
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 484
    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 485
    .local v21, "taskIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 486
    .local v11, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 489
    .local v24, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v11, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 493
    if-eqz v27, :cond_4

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v10

    .line 495
    .local v10, "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 509
    .local v13, "interpolator":Landroid/view/animation/Interpolator;
    :goto_4
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 510
    const/4 v4, 0x6

    .line 509
    invoke-virtual {v2, v4, v10}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 511
    const/4 v4, 0x6

    .line 509
    invoke-virtual {v2, v4, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 512
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 509
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    .line 513
    .local v8, "anim":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 497
    .end local v8    # "anim":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    if-ge v12, v14, :cond_5

    .line 498
    sub-int v2, v14, v12

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v10, v2, 0x96

    .line 499
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4

    .line 500
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    if-le v12, v14, :cond_6

    .line 501
    sub-int v2, v12, v14

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    rsub-int v2, v2, 0x96

    const/16 v4, 0x64

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 502
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4

    .line 504
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    const/16 v10, 0xc8

    .line 505
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4

    .line 516
    .end local v10    # "duration":I
    .end local v11    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v21    # "taskIndex":I
    .end local v24    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v25    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7
    return v26
.end method
