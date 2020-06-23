.class public Lcom/android/systemui/recents/views/RecentsTransitionHelper;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;,
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;,
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    }
.end annotation


# static fields
.field private static final SPECS_WAITING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppTransitionAnimationSpecs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -com_android_systemui_recents_views_RecentsTransitionHelper-mthref-0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 0

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->precacheSpecs()V

    return-void
.end method

.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p1, "-value"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    .param p6, "destinationStack"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    .line 85
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 97
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;)V

    .line 96
    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;
    .locals 4
    .param p0, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "addHeaderBitmap"    # Z

    .prologue
    const/4 v2, 0x0

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "b":Landroid/graphics/GraphicBuffer;
    if-eqz p3, :cond_0

    .line 449
    invoke-static {p1, p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 450
    .local v0, "b":Landroid/graphics/GraphicBuffer;
    if-nez v0, :cond_0

    .line 451
    return-object v2

    .line 455
    .end local v0    # "b":Landroid/graphics/GraphicBuffer;
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 456
    .local v1, "taskRect":Landroid/graphics/Rect;
    iget-object v2, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 458
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 457
    if-eq v2, v3, :cond_1

    .line 459
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 461
    :cond_1
    new-instance v2, Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v0, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method private composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;ILandroid/graphics/Rect;)Ljava/util/List;
    .locals 16
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "destinationStack"    # I
    .param p4, "windowRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "I",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v14, -0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_0

    .line 309
    move/from16 v9, p3

    .line 310
    .local v9, "targetStackId":I
    :goto_0
    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->useAnimationSpecForAppTransition(I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 311
    const/4 v14, 0x0

    return-object v14

    .line 309
    .end local v9    # "targetStackId":I
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v14, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    .restart local v9    # "targetStackId":I
    goto :goto_0

    .line 315
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v11

    .line 316
    .local v11, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v7

    .line 317
    .local v7, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .local v3, "offscreenTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v14

    iget-object v14, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 322
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v5, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/view/AppTransitionAnimationSpec;>;"
    const/4 v14, 0x1

    if-eq v9, v14, :cond_2

    const/4 v14, 0x3

    if-ne v9, v14, :cond_4

    .line 328
    :cond_2
    if-nez v11, :cond_7

    .line 329
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_3
    :goto_1
    return-object v5

    .line 327
    :cond_4
    const/4 v14, 0x6

    if-eq v9, v14, :cond_2

    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 345
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 346
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 347
    .local v10, "taskCount":I
    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_9

    .line 348
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 349
    .local v8, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x2

    if-ne v9, v14, :cond_6

    .line 350
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v13

    .line 351
    .local v13, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v13, :cond_8

    .line 354
    invoke-static {v8, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 331
    .end local v2    # "i":I
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "taskCount":I
    .end local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v14, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p4

    invoke-virtual {v7, v14, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v15, 0x1

    .line 333
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v15}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    .line 335
    .local v4, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v4, :cond_3

    .line 336
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    .end local v4    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .restart local v2    # "i":I
    .restart local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v10    # "taskCount":I
    .restart local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v14, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 358
    const/4 v15, 0x0

    .line 357
    invoke-virtual {v7, v14, v15}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v15, 0x1

    .line 359
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v15}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    .line 361
    .restart local v4    # "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v4, :cond_6

    .line 362
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 368
    .end local v4    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_9
    return-object v5
.end method

.method private static composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 5
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v4, 0x0

    .line 399
    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 400
    .local v2, "scale":F
    iget-object v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v1, v3

    .line 401
    .local v1, "headerWidth":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 402
    .local v0, "headerHeight":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v1, v0, v3, v2, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3
.end method

.method private static composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;
    .locals 3
    .param p0, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p1, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 376
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 7
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 380
    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 381
    .local v2, "scale":F
    iget-object v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 382
    .local v1, "fromWidth":I
    iget-object v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 383
    .local v0, "fromHeight":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    const-string/jumbo v3, "RecentsTransitionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not compose thumbnail for task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    const-string/jumbo v5, " at transform: "

    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0xffffff

    invoke-static {v6, v6, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3

    .line 392
    :cond_1
    invoke-static {v1, v0, p0, v2, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3
.end method

.method public static drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;
    .locals 6
    .param p0, "bufferWidth"    # I
    .param p1, "bufferHeight"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "scale"    # F
    .param p4, "eraseColor"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 416
    const-string/jumbo v3, "RecentsTransition"

    invoke-static {v3, v5}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v2

    .line 417
    .local v2, "node":Landroid/view/RenderNode;
    invoke-virtual {v2, v4, v4, p0, p1}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 418
    invoke-virtual {v2, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 419
    invoke-virtual {v2, p0, p1}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v1

    .line 420
    .local v1, "c":Landroid/view/DisplayListCanvas;
    invoke-virtual {v1, p3, p3}, Landroid/view/DisplayListCanvas;->scale(FF)V

    .line 421
    if-eqz p4, :cond_0

    .line 422
    invoke-virtual {v1, p4}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    .line 424
    :cond_0
    if-eqz p2, :cond_1

    .line 425
    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 427
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 429
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 430
    :cond_2
    return-object v5

    .line 434
    :cond_3
    invoke-static {v2, p0, p1}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 436
    return-object v5

    .line 438
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_10075(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 4
    .param p0, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "succeeded"    # Z

    .prologue
    .line 228
    if-eqz p3, :cond_1

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "taskIndexFromFront":I
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 232
    .local v0, "taskIndex":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 235
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .end local v0    # "taskIndex":I
    .end local v1    # "taskIndexFromFront":I
    :goto_0
    return-void

    .line 238
    :cond_1
    if-eqz p2, :cond_2

    .line 239
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 243
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_6454(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 2
    .param p0, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 156
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 157
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    return-void
.end method

.method private startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;I)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    .param p6, "destinationStack"    # I

    .prologue
    .line 225
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 226
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    .line 227
    new-instance v6, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, p4

    move v5, p6

    .line 226
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    .line 246
    if-eqz p5, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE;

    invoke-direct {v2, p5}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 4
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 296
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 297
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {p1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 298
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    new-instance v2, Landroid/view/AppTransitionAnimationSpec;

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v0, p2}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    .locals 3
    .param p1, "composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 261
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V

    .line 287
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    new-instance v1, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/view/IAppTransitionAnimationSpecsFuture;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    return-object v1

    .line 258
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_5075(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;ILandroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "destinationStack"    # I
    .param p4, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;ILandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_5596(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "screenPinningRequested"    # Z

    .prologue
    .line 140
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 141
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 142
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 144
    if-eqz p3, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;I)I

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZI)V
    .locals 31
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p5, "screenPinningRequested"    # Z
    .param p6, "destinationStack"    # I

    .prologue
    .line 113
    if-eqz p4, :cond_3

    .line 117
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 120
    .local v11, "windowRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v30

    .line 121
    .local v30, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const-string/jumbo v6, "RecentsTransitionHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSystemInSingleHandMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemInSingleHandMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemInSingleHandMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 125
    new-instance v6, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$4;

    move/from16 v7, p6

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v17

    .line 137
    :cond_0
    :goto_0
    new-instance v26, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;

    move-object/from16 v0, v26

    move/from16 v1, p5

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .end local v11    # "windowRect":Landroid/graphics/Rect;
    .end local v30    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .local v26, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    .line 163
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->-get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v6

    .line 164
    :goto_2
    const/4 v9, 0x1

    .line 162
    move-object/from16 v0, v26

    invoke-static {v7, v8, v6, v0, v9}, Landroid/app/ActivityOptions;->makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 165
    .local v16, "opts":Landroid/app/ActivityOptions;
    if-nez p4, :cond_5

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v18, p6

    .line 168
    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;I)V

    .line 187
    :goto_3
    const-string/jumbo v27, "com.motorola.motocit.key.KeyTest"

    .line 188
    .local v27, "cqaKeytestClassName":Ljava/lang/String;
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v6, :cond_7

    .line 189
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 190
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 191
    :goto_4
    if-nez v28, :cond_1

    .line 192
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    .line 193
    const-string/jumbo v7, "homekey"

    .line 192
    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void

    .line 127
    .end local v16    # "opts":Landroid/app/ActivityOptions;
    .end local v26    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v27    # "cqaKeytestClassName":Ljava/lang/String;
    .restart local v11    # "windowRect":Landroid/graphics/Rect;
    .restart local v30    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    const/16 v17, 0x0

    .line 129
    .local v17, "transitionFuture":Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    if-eqz p5, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6, v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;I)I

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 152
    .end local v11    # "windowRect":Landroid/graphics/Rect;
    .end local v17    # "transitionFuture":Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    .end local v30    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    const/16 v17, 0x0

    .line 153
    .restart local v17    # "transitionFuture":Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    new-instance v26, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v26    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    goto/16 :goto_1

    .line 163
    .end local v17    # "transitionFuture":Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 170
    .restart local v16    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    new-instance v29, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 172
    .local v29, "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v6, :cond_6

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 173
    new-instance v18, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p4

    move-object/from16 v23, v16

    move-object/from16 v24, v17

    move/from16 v25, p6

    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 180
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_3

    .line 182
    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v18, p6

    .line 183
    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;I)V

    goto/16 :goto_3

    .line 188
    .end local v29    # "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    .restart local v27    # "cqaKeytestClassName":Ljava/lang/String;
    :cond_7
    const/16 v28, 0x0

    .local v28, "isCqaKeytestClass":Z
    goto/16 :goto_4
.end method

.method public wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;
    .locals 1
    .param p1, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    const/4 v0, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 200
    return-object v0

    .line 202
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method
