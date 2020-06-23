.class public Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;
.super Ljava/lang/Object;
.source "FreeformWorkspaceLayoutAlgorithm.java"


# instance fields
.field private mTaskPadding:I

.field private mTaskRectMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskRectMap:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 155
    iget-object v1, p0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskRectMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskRectMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 158
    .local v0, "ffRect":Landroid/graphics/RectF;
    iput v3, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 159
    iput v3, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 160
    iget v1, p3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    int-to-float v1, v1

    iput v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 161
    const/4 v1, 0x0

    iput v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 162
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 163
    iget-object v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 164
    iget-object v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v2, p3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 166
    return-object p2

    .line 168
    .end local v0    # "ffRect":Landroid/graphics/RectF;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .prologue
    const/4 v1, 0x0

    .line 143
    iget v0, p2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 144
    :cond_0
    return v1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskRectMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    const v1, 0x7f070253

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskPadding:I

    .line 50
    return-void
.end method

.method public update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 24
    .param p2, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "freeformTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskRectMap:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->clear()V

    .line 60
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    .line 61
    .local v8, "numFreeformTasks":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    .line 64
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 65
    .local v20, "workspaceWidth":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 66
    .local v19, "workspaceHeight":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v7, v21, v22

    .line 67
    .local v7, "normalizedWorkspaceWidth":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 68
    .local v6, "normalizedWorkspaceHeight":F
    new-array v5, v8, [F

    .line 69
    .local v5, "normalizedTaskWidths":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_1

    .line 70
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 72
    .local v17, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 73
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    .line 82
    .local v14, "rowTaskWidth":F
    :goto_1
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v21

    aput v21, v5, v3

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v14    # "rowTaskWidth":F
    :cond_0
    move v14, v7

    .restart local v14    # "rowTaskWidth":F
    goto :goto_1

    .line 86
    .end local v14    # "rowTaskWidth":F
    .end local v17    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const v13, 0x3f59999a    # 0.85f

    .line 87
    .local v13, "rowScale":F
    const/16 v16, 0x0

    .line 88
    .local v16, "rowWidth":F
    const/4 v4, 0x0

    .line 89
    .local v4, "maxRowWidth":F
    const/4 v10, 0x1

    .line 90
    .local v10, "rowCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_4

    .line 91
    aget v21, v5, v3

    mul-float v18, v21, v13

    .line 92
    .local v18, "width":F
    add-float v21, v16, v18

    cmpl-float v21, v21, v7

    if-lez v21, :cond_3

    .line 94
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v13

    .line 67
    const/high16 v22, 0x3f800000    # 1.0f

    .line 94
    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    .line 98
    add-float v21, v16, v18

    div-float v21, v7, v21

    .line 99
    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 67
    const/high16 v23, 0x3f800000    # 1.0f

    .line 99
    div-float v22, v23, v22

    .line 98
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 100
    const/4 v10, 0x1

    .line 101
    const/16 v16, 0x0

    .line 102
    const/4 v3, 0x0

    .line 114
    :goto_3
    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_2

    .line 105
    :cond_2
    move/from16 v16, v18

    .line 106
    add-int/lit8 v10, v10, 0x1

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 111
    :cond_3
    add-float v16, v16, v18

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 118
    .end local v18    # "width":F
    :cond_4
    div-float v21, v4, v7

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v21, v22, v21

    .line 119
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    .line 118
    mul-float v21, v21, v22

    .line 119
    const/high16 v22, 0x40000000    # 2.0f

    .line 118
    div-float v2, v21, v22

    .line 120
    .local v2, "defaultRowLeft":F
    move v12, v2

    .line 121
    .local v12, "rowLeft":F
    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v13

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v21, v22, v21

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v15, v21, v22

    .line 122
    .local v15, "rowTop":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v11, v13, v21

    .line 123
    .local v11, "rowHeight":F
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_6

    .line 124
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    .line 125
    .restart local v17    # "task":Lcom/android/systemui/recents/model/Task;
    aget v21, v5, v3

    mul-float v18, v11, v21

    .line 126
    .restart local v18    # "width":F
    add-float v21, v12, v18

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    .line 128
    add-float/2addr v15, v11

    .line 129
    move v12, v2

    .line 131
    :cond_5
    new-instance v9, Landroid/graphics/RectF;

    add-float v21, v12, v18

    add-float v22, v15, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v12, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    .local v9, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskPadding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 133
    add-float v12, v12, v18

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->mTaskRectMap:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 137
    .end local v2    # "defaultRowLeft":F
    .end local v3    # "i":I
    .end local v4    # "maxRowWidth":F
    .end local v5    # "normalizedTaskWidths":[F
    .end local v6    # "normalizedWorkspaceHeight":F
    .end local v7    # "normalizedWorkspaceWidth":F
    .end local v9    # "rect":Landroid/graphics/RectF;
    .end local v10    # "rowCount":I
    .end local v11    # "rowHeight":F
    .end local v12    # "rowLeft":F
    .end local v13    # "rowScale":F
    .end local v15    # "rowTop":F
    .end local v16    # "rowWidth":F
    .end local v17    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v18    # "width":F
    .end local v19    # "workspaceHeight":I
    .end local v20    # "workspaceWidth":I
    :cond_6
    return-void
.end method
