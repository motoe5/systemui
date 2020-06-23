.class public Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;
.super Lcom/android/systemui/recents/views/TaskViewThumbnail;
.source "GridTaskViewThumbnail.java"


# instance fields
.field private mRestBackgroundOutline:Landroid/graphics/Path;

.field private mThumbnailOutline:Landroid/graphics/Path;

.field private mUpdateThumbnailOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x7f07025b

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    .line 52
    return-void
.end method

.method private updateThumbnailOutline()V
    .locals 23

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    const v3, 0x7f07025a

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 74
    .local v20, "titleHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 75
    .local v22, "viewWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v21, v2, v20

    .line 77
    .local v21, "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 76
    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 79
    .local v19, "thumbnailWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 78
    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 98
    .local v18, "thumbnailHeight":I
    const/4 v13, 0x0

    .line 99
    .local v13, "outerLeft":I
    const/4 v15, 0x0

    .line 100
    .local v15, "outerTop":I
    add-int/lit8 v14, v19, 0x0

    .line 101
    .local v14, "outerRight":I
    add-int/lit8 v12, v18, 0x0

    .line 102
    .local v12, "outerBottom":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    .line 107
    int-to-float v5, v14

    int-to-float v6, v12

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 106
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    .line 110
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    int-to-float v6, v12

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 109
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_1

    if-lez v19, :cond_1

    if-lez v18, :cond_1

    .line 115
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v14, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 117
    .local v11, "l":I
    move/from16 v16, v14

    .line 118
    .local v16, "r":I
    const/16 v17, 0x0

    .line 119
    .local v17, "t":I
    move v10, v12

    .line 120
    .local v10, "b":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    .line 125
    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 124
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 131
    .end local v10    # "b":I
    .end local v11    # "l":I
    .end local v16    # "r":I
    .end local v17    # "t":I
    :cond_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 132
    const/4 v11, 0x0

    .line 133
    .restart local v11    # "l":I
    move/from16 v16, v14

    .line 134
    .restart local v16    # "r":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v18, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 135
    .restart local v17    # "t":I
    move v10, v12

    .line 136
    .restart local v10    # "b":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    .line 141
    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 140
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    int-to-float v6, v12

    .line 144
    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 143
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 149
    .end local v10    # "b":I
    .end local v11    # "l":I
    .end local v16    # "r":I
    .end local v17    # "t":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 154
    const v6, 0x7f07025a

    .line 153
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 155
    .local v2, "titleHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 156
    .local v4, "viewWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v3, v5, v2

    .line 158
    .local v3, "viewHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 160
    .local v1, "thumbnailWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 159
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 162
    .local v0, "thumbnailHeight":I
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    if-eqz v5, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->updateThumbnailOutline()V

    .line 164
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 167
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUserLocked:Z

    if-eqz v5, :cond_1

    .line 168
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_4

    if-lez v1, :cond_4

    if-lez v0, :cond_4

    .line 171
    if-ge v1, v4, :cond_2

    .line 173
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    :cond_2
    if-ge v0, v3, :cond_3

    .line 177
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 61
    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 68
    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 69
    return-void
.end method
