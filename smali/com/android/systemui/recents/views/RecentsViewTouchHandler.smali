.class public Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# instance fields
.field private mDeviceId:I

.field private mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mDownPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragRequested:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragSlop:F

.field private mDragTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task"
    .end annotation
.end field

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mRv:Lcom/android/systemui/recents/views/RecentsView;

.field private mTaskView:Lcom/android/systemui/recents/views/TaskView;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task_view_"
    .end annotation
.end field

.field private mTaskViewOffset:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mVisibleDockStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1
    .param p1, "rv"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    .line 78
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 197
    .local v9, "action":I
    packed-switch v9, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Point;->set(II)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 204
    .local v12, "evX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 205
    .local v13, "evY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v15, v12, v3

    .line 206
    .local v15, "x":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v16, v13, v3

    .line 208
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-nez v3, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v13, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    float-to-double v0, v3

    move-wide/from16 v20, v0

    cmpl-double v3, v18, v20

    if-lez v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-eqz v3, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    .line 214
    .local v5, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    .line 216
    .local v6, "height":I
    const/4 v11, 0x0

    .line 219
    .local v11, "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v3, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    float-to-int v3, v12

    float-to-int v4, v13

    .line 221
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v8, 0x1

    .line 220
    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 227
    .end local v11    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    :cond_2
    if-nez v11, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "target$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DropTarget;

    .line 229
    .local v2, "target":Lcom/android/systemui/recents/views/DropTarget;
    float-to-int v3, v12

    float-to-int v4, v13

    .line 230
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v8, 0x0

    .line 229
    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    move-object v11, v2

    .line 236
    .end local v2    # "target":Lcom/android/systemui/recents/views/DropTarget;
    .end local v14    # "target$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eq v3, v11, :cond_5

    .line 237
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 238
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v7, v11}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 244
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 210
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 251
    .end local v12    # "evX":F
    .end local v13    # "evY":F
    .end local v15    # "x":F
    .end local v16    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_a

    .line 252
    const/4 v3, 0x3

    if-ne v9, v3, :cond_8

    const/4 v10, 0x1

    .line 253
    .local v10, "cancelled":Z
    :goto_2
    if-eqz v10, :cond_7

    .line 254
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 256
    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v17, v0

    .line 257
    if-nez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 256
    :goto_3
    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    .line 252
    .end local v10    # "cancelled":Z
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "cancelled":Z
    goto :goto_2

    .line 257
    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 260
    .end local v10    # "cancelled":Z
    :cond_a
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSnapAlgorithm()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 84
    return-void
.end method


# virtual methods
.method public getVisibleDockStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNeedShowSplitScreenHint()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 270
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v4

    .line 271
    if-eqz v4, :cond_1

    .line 274
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 276
    .local v1, "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 277
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 278
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->update(Landroid/content/Context;)V

    .line 279
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 283
    .end local v1    # "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_1
    return v3
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 187
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    .line 190
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    .line 181
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    .line 182
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 183
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 184
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 118
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 119
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 121
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v8, :cond_0

    .line 123
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v9, v10, v11, v12}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 126
    :cond_0
    iput-boolean v13, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    .line 128
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    .line 129
    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    .line 130
    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 131
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 133
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 134
    .local v3, "recentsViewLocation":[I
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/views/RecentsView;->getLocationInWindow([I)V

    .line 135
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v9

    aget v10, v3, v7

    sub-int/2addr v9, v10

    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    .line 136
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v10

    aget v11, v3, v13

    sub-int/2addr v10, v11

    iget-object v11, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v11

    .line 135
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 139
    iget-boolean v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->isUserTouchInitiated:Z

    if-eqz v8, :cond_1

    .line 140
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v5, v8

    .line 141
    .local v5, "x":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 142
    .local v6, "y":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8, v5}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 143
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 146
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 148
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v8

    .line 147
    if-eqz v8, :cond_2

    .line 149
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 150
    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget v10, v10, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    .line 149
    invoke-static {v8, v9, v10}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 151
    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v8, v8, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v8, :cond_4

    .line 152
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    invoke-direct {v8}, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 166
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    iget-object v9, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 167
    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 166
    invoke-direct {v8, v9, v10, p0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/RecentsViewTouchHandler;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 168
    iget v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 169
    iget v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDeviceId:I

    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 170
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_3

    .line 171
    const/16 v7, 0x3fd

    invoke-virtual {v0, v7}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 174
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_3
    return-void

    .line 155
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/RecentsConfiguration;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v2

    .line 157
    .local v2, "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 158
    .local v1, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 159
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/systemui/recents/model/TaskStack$DockState;->update(Landroid/content/Context;)V

    .line 160
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 112
    :cond_0
    return v2
.end method

.method public registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/systemui/recents/views/DropTarget;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
