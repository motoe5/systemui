.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field protected static sLastPipTime:J


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 211
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 221
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 229
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 235
    new-instance v1, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v3, 0xe1

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 247
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 248
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 251
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 254
    new-instance v1, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 255
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 256
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 259
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 261
    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 790
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 791
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 794
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 795
    .local v1, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 796
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 797
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 798
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 799
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 800
    return-void
.end method

.method public static clearLastPipTime()V
    .locals 2

    .prologue
    .line 662
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 663
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 646
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 647
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 648
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 10
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v6, 0x0

    .line 941
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 944
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemInSingleHandMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 945
    return-object v6

    .line 949
    :cond_0
    if-eqz p2, :cond_3

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v5, :cond_3

    .line 950
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v6

    .line 951
    :try_start_0
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    .line 952
    :goto_0
    iget-object v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v4, v5

    .line 953
    .local v4, "width":I
    iget-object v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v1, v5

    .line 954
    .local v1, "height":I
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v4, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 961
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 962
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 963
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 965
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 967
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 968
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 969
    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 970
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 969
    invoke-static {v4, v5, v7, v8, v9}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 951
    .end local v1    # "height":I
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "width":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "disabledInSafeMode":Z
    goto :goto_0

    .line 950
    .end local v0    # "disabledInSafeMode":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 974
    :cond_3
    return-object v6
.end method

.method public static getLastPipTime()J
    .locals 2

    .prologue
    .line 655
    sget-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-wide v0
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;
    .locals 25
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 841
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v14, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v7

    .line 847
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 848
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 849
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v16

    .line 851
    .local v16, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 855
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v12, v6, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_1

    .line 856
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 857
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 859
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    move-object/from16 v9, p2

    .line 858
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 861
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v18

    .line 862
    .local v18, "thumbnail":Landroid/graphics/GraphicBuffer;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 863
    .local v20, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 864
    new-instance v6, Landroid/view/AppTransitionAnimationSpec;

    iget-object v7, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v6, v7, v0, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v18    # "thumbnail":Landroid/graphics/GraphicBuffer;
    .end local v20    # "toTaskRect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 846
    .end local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v12    # "i":I
    .end local v16    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 867
    .restart local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v12    # "i":I
    .restart local v16    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v15, v6, [Landroid/view/AppTransitionAnimationSpec;

    .line 868
    .local v15, "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 869
    new-instance v6, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 870
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    .line 869
    move-object/from16 v0, p0

    invoke-static {v7, v15, v8, v9, v0}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 870
    const/4 v8, 0x0

    .line 869
    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 873
    .end local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v12    # "i":I
    .end local v14    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v15    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .end local v16    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    new-instance v19, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 874
    .local v19, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v22

    .line 877
    .local v22, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    .line 879
    .local v21, "toTaskRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/views/RecentsView;->shouldShowHintForSplitScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 880
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 881
    .local v13, "insets":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 882
    .local v10, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v13, v6, v7}, Lcom/android/systemui/recents/views/RecentsView;->getHintSplitScreenSystemInsets(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 883
    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v13, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, v21

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 884
    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v21

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 888
    .end local v10    # "displayRect":Landroid/graphics/Rect;
    .end local v13    # "insets":Landroid/graphics/Rect;
    :cond_3
    new-instance v6, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    .line 889
    new-instance v7, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 888
    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v11

    .line 903
    .local v11, "future":Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
    new-instance v6, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 904
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v9

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 903
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v8, v9, v0, v1}, Landroid/app/ActivityOptions;->makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-direct {v6, v7, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 914
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 915
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 916
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_1

    .line 917
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 929
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 930
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 931
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 932
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 931
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 933
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 920
    :cond_1
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 922
    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method private getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 724
    :goto_0
    return-object v0

    .line 726
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "growTarget"    # I

    .prologue
    .line 1063
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1066
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1067
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1069
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1070
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 1068
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1071
    return-object v2
.end method

.method static synthetic lambda$-com_android_systemui_recents_RecentsImpl_50573(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "future"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    .prologue
    .line 1086
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1087
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1088
    if-eqz p2, :cond_0

    .line 1089
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->precacheSpecs()V

    :cond_0
    return-void
.end method

.method private preloadIcon(I)V
    .locals 4
    .param p1, "runningTaskId"    # I

    .prologue
    .line 807
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 808
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 809
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 810
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 811
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 812
    return-void
.end method

.method private reloadResources()V
    .locals 10

    .prologue
    const v4, 0x7f07027a

    const v1, 0x7f070279

    .line 669
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 672
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x105014b

    .line 671
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    .line 674
    const v0, 0x10500ef

    .line 673
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    .line 676
    const v0, 0x10500f4

    .line 675
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    .line 677
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 684
    const v7, 0x7f07025a

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    .line 677
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 686
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 687
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d00f1

    .line 688
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 687
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 689
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    .line 690
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 4
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "future"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    .prologue
    .line 1079
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1080
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const v2, 0x10804000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1084
    new-instance v0, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    .line 1085
    .local v0, "hideMenuEvent":Lcom/android/systemui/recents/events/component/HidePipMenuEvent;
    new-instance v2, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$1;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1092
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1093
    return-void
.end method

.method private updateDummyStackViewLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 693
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 694
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 695
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 696
    .local v8, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 701
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 703
    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    .line 705
    :cond_0
    invoke-direct {p0, v8, p2, v1}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 706
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 708
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v9

    .line 709
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 712
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 713
    if-eqz p1, :cond_1

    .line 714
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 715
    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    move-object v2, p2

    .line 714
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 716
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 717
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 718
    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v3

    .line 717
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v9

    .line 721
    return-void

    .line 708
    .end local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :catchall_0
    move-exception v2

    monitor-exit v9

    throw v2
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    .line 739
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 740
    .local v5, "windowRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 741
    .local v3, "taskViewWidth":I
    const/4 v4, 0x0

    .line 742
    .local v4, "useGridLayout":Z
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v7

    .line 743
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v4

    .line 744
    .local v4, "useGridLayout":Z
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 745
    if-eqz p1, :cond_0

    .line 746
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    .line 747
    .local v1, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    .line 748
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 750
    if-eqz v4, :cond_5

    .line 751
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-result-object v0

    .line 752
    .local v0, "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 754
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 753
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6, v8, v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    float-to-int v3, v6

    .end local v0    # "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    .end local v1    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_0
    :goto_0
    monitor-exit v7

    .line 765
    if-eqz p1, :cond_4

    if-lez v3, :cond_4

    .line 766
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v7

    .line 767
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 768
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v6

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v6, v8, :cond_3

    .line 769
    :cond_1
    if-eqz v4, :cond_2

    .line 770
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    .line 771
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 773
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    .line 774
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 775
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 776
    iget v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 774
    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 778
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v3, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 781
    :cond_4
    return-void

    .line 757
    .restart local v1    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 758
    .local v2, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 759
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_0

    .line 742
    .end local v1    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "taskViewBounds":Landroid/graphics/Rect;
    .end local v4    # "useGridLayout":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 766
    .restart local v4    # "useGridLayout":Z
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 626
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 630
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 634
    if-nez p2, :cond_1

    move v2, v4

    .line 638
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    .line 632
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 640
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 634
    goto :goto_0
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 831
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 829
    const v2, 0x7f0100a0

    .line 830
    const v3, 0x7f0100a1

    .line 831
    const/4 v4, 0x0

    .line 828
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 821
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 819
    const v2, 0x7f0100a2

    .line 820
    const v3, 0x7f0100a3

    .line 821
    const/4 v4, 0x0

    .line 818
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 347
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 354
    return-void

    .line 359
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 361
    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_20621()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 441
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 442
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 443
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 444
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 445
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v2, :cond_0

    .line 446
    return-void

    .line 449
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 450
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 451
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-boolean v7, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 452
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 453
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 456
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 462
    invoke-direct {p0, v4, v8}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_41202(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Ljava/util/List;
    .locals 5
    .param p1, "toTaskRect"    # Landroid/graphics/RectF;
    .param p2, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v3, 0x0

    .line 890
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 891
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 892
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 895
    .local v1, "thumbnail":Landroid/graphics/GraphicBuffer;
    iget-object v2, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v2, :cond_0

    .line 896
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/AppTransitionAnimationSpec;

    new-instance v3, Landroid/view/AppTransitionAnimationSpec;

    .line 897
    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 896
    invoke-direct {v3, v4, v1, v0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 899
    :cond_0
    return-object v3
.end method

.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 1099
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1100
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    .prologue
    .line 266
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 267
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 268
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 269
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 270
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 271
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 272
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 273
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 274
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 473
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 474
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 477
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 478
    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 482
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    move-object v0, p1

    .line 298
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 299
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 300
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v1, :cond_0

    .line 301
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 303
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 289
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    .line 290
    return-void
.end method

.method public preloadRecents()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 614
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 615
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 616
    return-void
.end method

.method public showNextTask()V
    .locals 18

    .prologue
    .line 488
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 489
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    .line 490
    .local v11, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v12

    .line 491
    .local v12, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 492
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 495
    .local v8, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    .line 499
    .local v13, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v13, :cond_2

    return-void

    .line 502
    :cond_2
    iget v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v10

    .line 503
    .local v10, "isRunningTaskInHomeStack":Z
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 504
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v17, 0x0

    .line 505
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v5, 0x0

    .line 506
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 507
    .local v15, "taskCount":I
    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_0
    const/4 v2, 0x1

    if-lt v9, v2, :cond_3

    .line 508
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 509
    .local v14, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v10, :cond_4

    .line 510
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 511
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 512
    const v3, 0x7f0100a6

    .line 513
    const v4, 0x7f01009f

    .line 511
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 525
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :goto_1
    if-nez v17, :cond_6

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 528
    const v3, 0x7f0100a7

    .line 527
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 529
    return-void

    .line 515
    .restart local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v14    # "task":Lcom/android/systemui/recents/model/Task;
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    iget-object v2, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_5

    .line 516
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 517
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 518
    const v3, 0x7f0100a9

    .line 519
    const v4, 0x7f0100a8

    .line 517
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 507
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    .local v17, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 534
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, -0x1

    .line 535
    const/4 v7, 0x0

    .line 533
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    .line 536
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 622
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 7
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 309
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 310
    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 311
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 333
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 334
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_6

    move v1, p2

    .line 335
    :goto_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 336
    .local v2, "isHomeStackVisible":Landroid/util/MutableBoolean;
    if-nez v1, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 337
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 338
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v5, v2, Landroid/util/MutableBoolean;->value:Z

    if-nez v5, :cond_7

    .end local p5    # "fromHome":Z
    :goto_2
    invoke-virtual {p0, v3, p5, p3, p6}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    :goto_3
    return-void

    .line 314
    .restart local p5    # "fromHome":Z
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 320
    if-nez p1, :cond_4

    .line 321
    return-void

    .line 323
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    .line 324
    :cond_5
    if-eqz p1, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 328
    return-void

    .line 334
    .restart local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_6
    const/4 v1, 0x1

    .local v1, "forceVisible":Z
    goto :goto_1

    .line 338
    .end local v1    # "forceVisible":Z
    .restart local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_7
    const/4 p5, 0x1

    goto :goto_2

    .line 341
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local p5    # "fromHome":Z
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "RecentsImpl"

    const-string/jumbo v6, "Failed to launch RecentsActivity"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 542
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 543
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    .line 544
    .local v11, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v13

    .line 545
    .local v13, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 546
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 549
    .local v8, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 552
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    .line 553
    .local v14, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v14, :cond_2

    return-void

    .line 555
    :cond_2
    iget v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 558
    :cond_3
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 559
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v18, 0x0

    .line 560
    .local v18, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v5, 0x0

    .line 561
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 562
    .local v16, "taskCount":I
    const/4 v12, 0x0

    .line 563
    .local v12, "numAffiliatedTasks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 564
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 565
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v14, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_8

    .line 566
    iget-object v9, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 568
    .local v9, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_7

    .line 569
    invoke-virtual {v9, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 570
    .local v19, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 571
    const v3, 0x7f0100a6

    .line 572
    const v4, 0x7f0100a5

    .line 570
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 579
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    :goto_1
    if-eqz v19, :cond_4

    .line 580
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 582
    .end local v18    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v12

    .line 588
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v9    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_5
    if-nez v18, :cond_a

    .line 589
    const/4 v2, 0x1

    if-le v12, v2, :cond_6

    .line 590
    if-eqz p1, :cond_9

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 593
    const v3, 0x7f0100a4

    .line 592
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 591
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 600
    :cond_6
    :goto_2
    return-void

    .line 574
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v9    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v18    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {v9, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    .line 575
    .restart local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 576
    const v3, 0x7f0100a9

    .line 577
    const v4, 0x7f0100a8

    .line 575
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 563
    .end local v9    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v19    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v5, "launchOpts":Landroid/app/ActivityOptions;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 596
    .end local v5    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v18    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 597
    const v3, 0x7f0100a7

    .line 596
    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 595
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 604
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "overview_affiliated_task_launch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, -0x1

    .line 609
    const/4 v7, 0x0

    .line 607
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    .line 610
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 16
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .prologue
    .line 982
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    .line 983
    .local v5, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    .line 984
    .local v4, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 985
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_4

    .line 986
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isBlackListedActivity(Ljava/lang/String;)Z

    move-result v3

    .line 989
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_5

    xor-int/lit8 v13, v3, 0x1

    if-eqz v13, :cond_5

    if-eqz p1, :cond_5

    .line 990
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 996
    .local v7, "runningTaskId":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v13, :cond_1

    .line 998
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v13

    sput-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1000
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v13, :cond_2

    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 1001
    :cond_2
    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    xor-int/lit8 v14, p2, 0x1

    invoke-virtual {v5, v13, v7, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 1004
    :cond_3
    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    .line 1005
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v13

    if-lez v13, :cond_6

    const/4 v2, 0x1

    .line 1006
    .local v2, "hasRecentTasks":Z
    :goto_2
    if-eqz p1, :cond_7

    xor-int/lit8 v13, p2, 0x1

    if-eqz v13, :cond_7

    .line 1007
    move v11, v2

    .line 1010
    :goto_3
    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    xor-int/lit8 v13, v13, 0x1

    :goto_4
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1011
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_5
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 1012
    iget-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v13, :cond_a

    move v13, v3

    :goto_6
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    .line 1013
    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 1015
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lcom/android/systemui/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v13

    .line 1014
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 1017
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 1018
    iput v7, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1019
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1023
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 1026
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v12

    .line 1027
    .local v12, "windowOverrideRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v14

    .line 1032
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .local v10, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    monitor-exit v14

    .line 1036
    iget v13, v10, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 1037
    iget v13, v10, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 1039
    if-nez p3, :cond_b

    .line 1040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v13, v14, v15}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 1041
    const/4 v14, 0x0

    .line 1040
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    .line 1042
    return-void

    .line 987
    .end local v2    # "hasRecentTasks":Z
    .end local v7    # "runningTaskId":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v12    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_4
    const/4 v3, 0x0

    .local v3, "isBlacklisted":Z
    goto/16 :goto_0

    .line 991
    .end local v3    # "isBlacklisted":Z
    :cond_5
    const/4 v7, -0x1

    .restart local v7    # "runningTaskId":I
    goto/16 :goto_1

    .line 1005
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "hasRecentTasks":Z
    goto/16 :goto_2

    .line 1006
    :cond_7
    const/4 v11, 0x0

    .local v11, "useThumbnailTransition":Z
    goto :goto_3

    .line 1010
    .end local v11    # "useThumbnailTransition":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 1011
    :cond_9
    const/4 v13, 0x1

    goto :goto_5

    .line 1012
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 1031
    .restart local v12    # "windowOverrideRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1046
    .restart local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    :cond_b
    if-eqz v3, :cond_c

    .line 1047
    new-instance v6, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :goto_7
    iget-object v13, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/app/ActivityOptions;

    iget-object v14, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 1060
    return-void

    .line 1048
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_c
    if-eqz v11, :cond_d

    .line 1050
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;

    move-result-object v6

    .restart local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    goto :goto_7

    .line 1054
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_d
    new-instance v6, Landroid/util/Pair;

    if-eqz v2, :cond_e

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v13

    .line 1056
    :goto_8
    const/4 v14, 0x0

    .line 1054
    invoke-direct {v6, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    goto :goto_7

    .line 1056
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;>;"
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v13

    goto :goto_8
.end method

.method public toggleRecents(I)V
    .locals 14
    .param p1, "growTarget"    # I

    .prologue
    .line 365
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 366
    return-void

    .line 369
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 370
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 371
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 374
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 375
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v10, 0x1

    invoke-direct {v3, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 376
    .local v3, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v4, v10, v12

    .line 378
    .local v4, "elapsedTime":J
    invoke-virtual {v9, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 379
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    .line 380
    .local v1, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 381
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v7

    .line 382
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v10, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_6

    .line 384
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    const/4 v6, 0x1

    .line 385
    .local v6, "isQuickTap":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v10, :cond_3

    .line 386
    if-eqz v6, :cond_2

    .line 387
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 412
    .end local v6    # "isQuickTap":Z
    :goto_1
    return-void

    .line 384
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isQuickTap":Z
    goto :goto_0

    .line 389
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 431
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "elapsedTime":J
    .end local v6    # "isQuickTap":Z
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v10, "RecentsImpl"

    const-string/jumbo v11, "Failed to launch RecentsActivity"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void

    .line 392
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "isQuickTap":Z
    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_5

    .line 394
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 397
    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 405
    .end local v6    # "isQuickTap":Z
    :cond_6
    const-wide/16 v10, 0x15e

    cmp-long v10, v4, v10

    if-gez v10, :cond_7

    .line 406
    return-void

    .line 409
    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_1

    .line 418
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_8
    const-wide/16 v10, 0x15e

    cmp-long v10, v4, v10

    if-gez v10, :cond_9

    .line 419
    return-void

    .line 423
    :cond_9
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    .line 424
    .local v8, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v10, v3, Landroid/util/MutableBoolean;->value:Z

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v10, v11, p1}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    .line 428
    const-string/jumbo v10, "recentapps"

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
