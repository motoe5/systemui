.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# instance fields
.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field mContext:Landroid/content/Context;

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFreeformStackGap:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumFreeformTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTitleBarHeight:I

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-object v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 239
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 242
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 256
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    .line 341
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    .line 342
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    .line 349
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 350
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 355
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .line 356
    new-instance v1, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    .line 357
    new-instance v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method private constructFocusedCurve()Landroid/graphics/Path;
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1208
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1209
    .local v3, "topPeekHeightPct":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1210
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1209
    div-float v0, v4, v5

    .line 1211
    .local v0, "bottomPeekHeightPct":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 1212
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 1211
    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1212
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1211
    div-float v1, v4, v5

    .line 1213
    .local v1, "minBottomPeekHeightPct":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1214
    .local v2, "p":Landroid/graphics/Path;
    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1215
    sub-float v4, v6, v3

    invoke-virtual {v2, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1216
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v4, v4, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v4, v8, v4

    sub-float v4, v6, v4

    sub-float v5, v6, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1218
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1219
    return-object v2
.end method

.method private constructFocusedDimCurve()Landroid/graphics/Path;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1250
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1253
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1254
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1255
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v1, v3, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1256
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1257
    return-object v0
.end method

.method private constructUnfocusedCurve()Landroid/graphics/Path;
    .locals 15

    .prologue
    .line 1232
    const v3, 0x3ecccccd    # 0.4f

    .line 1233
    .local v3, "cpoint1X":F
    const v4, 0x3f79999a    # 0.975f

    .line 1234
    .local v4, "cpoint1Y":F
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v1, v2

    .line 1235
    .local v14, "topPeekHeightPct":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v14

    .line 1233
    const v2, 0x3f79999a    # 0.975f

    .line 1235
    sub-float/2addr v1, v2

    const v2, 0x3dcccccc    # 0.099999994f

    div-float v13, v1, v2

    .line 1232
    .local v13, "slope":F
    const v1, 0x3ecccccd    # 0.4f

    .line 1236
    mul-float/2addr v1, v13

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v12, v2, v1

    .line 1237
    .local v12, "b":F
    const v8, 0x3f266666    # 0.65f

    .local v8, "cpoint2X":F
    const v1, 0x3f266666    # 0.65f

    .line 1238
    mul-float/2addr v1, v13

    add-float v9, v1, v12

    .line 1239
    .local v9, "cpoint2Y":F
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1240
    .local v0, "p":Landroid/graphics/Path;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1241
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v1, v14

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1242
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v14

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1243
    return-object v0
.end method

.method private constructUnfocusedDimCurve()Landroid/graphics/Path;
    .locals 14

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const v11, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    .line 1264
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    .line 1265
    .local v5, "focusX":F
    sub-float v1, v12, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v8, v5, v1

    .line 1266
    .local v8, "cpoint2X":F
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1269
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1270
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v5

    const/high16 v4, 0x3e400000    # 0.1875f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v7, v0

    move v9, v6

    move v10, v8

    move v13, v11

    .line 1271
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1272
    return-object v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIII)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneResId"    # I
    .param p2, "tabletResId"    # I
    .param p3, "xlargeTabletResId"    # I
    .param p4, "gridLayoutResId"    # I

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, p4

    .line 1146
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIIII)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phonePortResId"    # I
    .param p2, "phoneLandResId"    # I
    .param p3, "tabletPortResId"    # I
    .param p4, "tabletLandResId"    # I
    .param p5, "xlargeTabletPortResId"    # I
    .param p6, "xlargeTabletLandResId"    # I
    .param p7, "gridLayoutResId"    # I

    .prologue
    .line 1156
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1157
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1158
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1159
    const/4 v4, 0x2

    .line 1158
    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 1160
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v3, :cond_1

    .line 1161
    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 1158
    .end local v1    # "isLandscape":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLandscape":Z
    goto :goto_0

    .line 1162
    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_3

    .line 1163
    if-eqz v1, :cond_2

    .end local p6    # "xlargeTabletLandResId":I
    :goto_1
    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p6    # "xlargeTabletLandResId":I
    :cond_2
    move p6, p5

    .line 1165
    goto :goto_1

    .line 1166
    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_5

    .line 1167
    if-eqz v1, :cond_4

    .end local p4    # "tabletLandResId":I
    :goto_2
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p4    # "tabletLandResId":I
    :cond_4
    move p4, p3

    .line 1169
    goto :goto_2

    .line 1171
    :cond_5
    if-eqz v1, :cond_6

    .end local p2    # "phoneLandResId":I
    :goto_3
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p2    # "phoneLandResId":I
    :cond_6
    move p2, p1

    .line 1173
    goto :goto_3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .prologue
    .line 1194
    if-nez p2, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1197
    .local v0, "offset":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1198
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    .line 1196
    .end local v0    # "offset":F
    .end local v1    # "offsetPct":F
    :cond_0
    move v0, p1

    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .prologue
    .line 1182
    if-nez p2, :cond_0

    .line 1183
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1185
    .local v0, "offset":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1186
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    .line 1184
    .end local v0    # "offset":F
    .end local v1    # "offsetPct":F
    :cond_0
    move v0, p1

    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 3
    .param p1, "instance"    # Landroid/graphics/Rect;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "value"    # I
    .param p4, "minValue"    # I
    .param p5, "extent"    # I

    .prologue
    .line 1281
    if-nez p5, :cond_0

    .line 1282
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    .line 1283
    .local v0, "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1284
    .end local v0    # "scale":F
    :cond_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    .line 1285
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    .line 1286
    .restart local v0    # "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1288
    .end local v0    # "scale":F
    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "overrideX"    # F
    .param p3, "newOverrideX"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 738
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 739
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 740
    .local v0, "outOfBounds":Z
    :goto_0
    if-nez v0, :cond_0

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_3

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    .line 738
    .end local v0    # "outOfBounds":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "outOfBounds":Z
    goto :goto_0

    .line 739
    .end local v0    # "outOfBounds":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "outOfBounds":Z
    goto :goto_0

    .line 741
    :cond_3
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_4

    cmpg-float v3, p1, p3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateFrontBackTransforms()V
    .locals 12

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    return-void

    .line 1300
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    .line 1301
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    .line 1300
    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v1

    .line 1302
    .local v1, "min":F
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    .line 1303
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    .line 1302
    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v11

    .line 1304
    .local v11, "max":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1305
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, v1

    .line 1304
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1306
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1307
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move v3, v11

    move v4, v11

    .line 1306
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1310
    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F

    .prologue
    .line 662
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v4, :cond_0

    .line 663
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 664
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 665
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    .line 666
    .local v0, "focusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    .line 667
    .local v1, "focusedY":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    .line 668
    .local v2, "unfocusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float v3, p2, v4

    .line 669
    .local v3, "unfocusedTaskProgress":F
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 673
    .end local v0    # "focusedRangeX":F
    .end local v1    # "focusedY":F
    .end local v2    # "unfocusedRangeX":F
    .end local v3    # "unfocusedTaskProgress":F
    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "stackScroll"    # F

    .prologue
    const/4 v7, 0x0

    .line 680
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 681
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 683
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 684
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v6

    .line 685
    .local v2, "top":I
    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v0

    .line 686
    .local v0, "focusedRangeX":F
    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    .line 687
    .local v3, "unfocusedRangeX":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v5

    add-float v4, p2, v5

    .line 688
    .local v4, "unfocusedTaskProgress":F
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    :cond_0
    return-void
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 695
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v2

    return-object v2

    .line 800
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    .line 801
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v2

    .line 805
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-nez v2, :cond_4

    .line 806
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 807
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 806
    :goto_1
    invoke-direct {v5, v2, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v5

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 807
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 812
    :cond_4
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 813
    .local v7, "tmpTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 814
    .local v11, "currentRange":Lcom/android/systemui/recents/views/Range;
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 816
    const v4, 0x7f070279

    .line 815
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 817
    .local v21, "taskBarHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 818
    .local v16, "numVisibleTasks":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 819
    .local v17, "numVisibleThumbnails":I
    :goto_4
    const/high16 v18, 0x4f000000

    .line 820
    .local v18, "prevScreenY":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_5
    if-ltz v13, :cond_d

    .line 821
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/Task;

    .line 824
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 820
    :cond_5
    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 813
    .end local v11    # "currentRange":Lcom/android/systemui/recents/views/Range;
    .end local v13    # "i":I
    .end local v16    # "numVisibleTasks":I
    .end local v17    # "numVisibleThumbnails":I
    .end local v18    # "prevScreenY":F
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v21    # "taskBarHeight":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .restart local v11    # "currentRange":Lcom/android/systemui/recents/views/Range;
    goto :goto_2

    .line 817
    .restart local v21    # "taskBarHeight":I
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "numVisibleTasks":I
    goto :goto_3

    .line 818
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "numVisibleThumbnails":I
    goto :goto_4

    .line 829
    .restart local v13    # "i":I
    .restart local v18    # "prevScreenY":F
    .restart local v20    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    .line 830
    .local v3, "taskProgress":F
    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 834
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v2, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v14

    .line 835
    :goto_7
    if-eqz v14, :cond_f

    .line 836
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 837
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 838
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move v4, v3

    .line 836
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 839
    iget-object v2, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    .line 840
    .local v19, "screenY":F
    sub-float v2, v18, v19

    move/from16 v0, v21

    int-to-float v4, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_b

    const/4 v12, 0x1

    .line 841
    .local v12, "hasVisibleThumbnail":Z
    :goto_8
    if-eqz v12, :cond_c

    .line 842
    add-int/lit8 v17, v17, 0x1

    .line 843
    add-int/lit8 v16, v16, 0x1

    .line 844
    move/from16 v18, v19

    goto :goto_6

    .line 834
    .end local v12    # "hasVisibleThumbnail":Z
    .end local v19    # "screenY":F
    :cond_a
    const/4 v14, 0x1

    .local v14, "isFrontMostTaskInGroup":Z
    goto :goto_7

    .line 840
    .end local v14    # "isFrontMostTaskInGroup":Z
    .restart local v19    # "screenY":F
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "hasVisibleThumbnail":Z
    goto :goto_8

    .line 848
    :cond_c
    move v15, v13

    .local v15, "j":I
    :goto_9
    if-ltz v15, :cond_d

    .line 849
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    .line 850
    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v2

    if-nez v2, :cond_e

    .line 862
    .end local v3    # "taskProgress":F
    .end local v12    # "hasVisibleThumbnail":Z
    .end local v15    # "j":I
    .end local v19    # "screenY":F
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_d
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v2

    .line 853
    .restart local v3    # "taskProgress":F
    .restart local v12    # "hasVisibleThumbnail":Z
    .restart local v15    # "j":I
    .restart local v19    # "screenY":F
    .restart local v20    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_e
    add-int/lit8 v16, v16, 0x1

    .line 848
    add-int/lit8 v15, v15, -0x1

    goto :goto_9

    .line 859
    .end local v12    # "hasVisibleThumbnail":Z
    .end local v15    # "j":I
    .end local v19    # "screenY":F
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1322
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    const-string/jumbo v5, " numStackTasks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1324
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1326
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    const-string/jumbo v5, "insets="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    const-string/jumbo v5, " stack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    const-string/jumbo v5, " task="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    const-string/jumbo v5, " freeform="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    const-string/jumbo v5, " actionButton="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1334
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    const-string/jumbo v5, "minScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1336
    const-string/jumbo v5, " maxScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1337
    const-string/jumbo v5, " initialScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1338
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1340
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    const-string/jumbo v5, "focusState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1342
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1344
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1345
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1346
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1347
    .local v3, "taskId":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v4, v5

    .line 1348
    .local v4, "x":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1350
    .local v2, "overrideX":F
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    const-string/jumbo v5, "taskId= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    const-string/jumbo v5, " x= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 1353
    const-string/jumbo v5, " overrideX= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1354
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1345
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1357
    .end local v0    # "i":I
    .end local v2    # "overrideX":F
    .end local v3    # "taskId":I
    .end local v4    # "x":F
    :cond_0
    return-void
.end method

.method public getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getDeltaPForY(II)F
    .locals 3
    .param p1, "downY"    # I
    .param p2, "y"    # I

    .prologue
    .line 1097
    sub-int v1, p2, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1098
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    .line 1097
    mul-float v0, v1, v2

    .line 1099
    .local v0, "deltaP":F
    neg-float v1, v0

    return v1
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 3

    .prologue
    .line 748
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 749
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 750
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_1

    .line 751
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 753
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getStackActionButtonRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getStackActionButtonRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 1065
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1066
    .local v0, "overrideP":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 1069
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1085
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v0

    .line 1086
    .local v0, "normX":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1087
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    .line 1088
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v2

    .line 1087
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1088
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 1087
    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/recents/model/Task;)F
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 13
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "focusState"    # I
    .param p4, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "forceUpdate"    # Z
    .param p7, "ignoreTaskOverrides"    # Z

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v1, p1, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    move-object/from16 v0, p4

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 887
    return-object p4

    .line 888
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 890
    .local v12, "taskIndex":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 891
    .local v11, "taskCount":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-object/from16 v0, p4

    invoke-virtual {v1, v12, v11, v0, p0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 892
    return-object p4

    .line 896
    .end local v11    # "taskCount":I
    .end local v12    # "taskIndex":I
    :cond_1
    if-nez p1, :cond_3

    const/4 v10, -0x1

    .line 898
    .local v10, "nonOverrideTaskProgress":I
    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne v10, v1, :cond_4

    .line 899
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 900
    return-object p4

    .line 896
    .end local v10    # "nonOverrideTaskProgress":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .restart local v10    # "nonOverrideTaskProgress":I
    goto :goto_0

    .line 902
    :cond_4
    if-eqz p7, :cond_5

    .line 903
    int-to-float v2, v10

    .line 905
    .local v2, "taskProgress":F
    :goto_1
    int-to-float v3, v10

    .line 906
    const/4 v8, 0x0

    move-object v1, p0

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    .line 905
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 907
    return-object p4

    .line 904
    .end local v2    # "taskProgress":F
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    .restart local v2    # "taskProgress":F
    goto :goto_1
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v6, 0x0

    .line 871
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "ignoreTaskOverrides"    # Z

    .prologue
    .line 878
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 879
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 878
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 30
    .param p1, "taskProgress"    # F
    .param p2, "nonOverrideTaskProgress"    # F
    .param p3, "stackScroll"    # F
    .param p4, "focusState"    # I
    .param p5, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p7, "ignoreSingleTaskCase"    # Z
    .param p8, "forceUpdate"    # Z

    .prologue
    .line 952
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v16

    .line 955
    .local v16, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v20

    .line 958
    .local v20, "unfocusedVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v10

    .line 961
    .local v10, "focusedVisible":Z
    if-nez p8, :cond_0

    xor-int/lit8 v26, v20, 0x1

    if-eqz v26, :cond_0

    xor-int/lit8 v26, v10, 0x1

    if-eqz v26, :cond_0

    .line 962
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 963
    return-void

    .line 968
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v19

    .line 971
    .local v19, "unfocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v9

    .line 975
    .local v9, "focusedRangeX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v27, v0

    move/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v5

    .line 976
    .local v5, "boundedStackScroll":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v4

    .line 980
    .local v4, "boundedScrollUnfocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    .line 984
    .local v3, "boundedScrollUnfocusedNonOverrideRangeX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v26, v0

    const v27, -0x800001

    move/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v13

    .line 985
    .local v13, "lowerBoundedStackScroll":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v14

    .line 988
    .local v14, "lowerBoundedUnfocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v12

    .line 990
    .local v12, "lowerBoundedFocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    sub-int v26, v26, v27

    div-int/lit8 v23, v26, 0x2

    .line 995
    .local v23, "x":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v26

    if-nez v26, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    xor-int/lit8 v26, p7, 0x1

    if-eqz v26, :cond_2

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v26, v0

    sub-float v26, v26, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v17, v26, v27

    .line 999
    .local v17, "tmpP":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v28

    sub-int v27, v27, v28

    div-int/lit8 v27, v27, 0x2

    .line 999
    add-int v6, v26, v27

    .line 1001
    .local v6, "centerYOffset":I
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v26

    add-int v24, v6, v26

    .line 1002
    .local v24, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    .line 1003
    .local v25, "z":F
    const/4 v7, 0x0

    .line 1004
    .local v7, "dimAlpha":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1041
    .end local v6    # "centerYOffset":I
    .end local v17    # "tmpP":F
    .local v22, "viewOutlineAlpha":F
    :goto_0
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1042
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 1043
    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 1044
    move-object/from16 v0, p5

    iput v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 1045
    move/from16 v0, v22

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 1046
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1047
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/RectF;->offset(FF)V

    .line 1048
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 1049
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v26, v26, v27

    if-gez v26, :cond_6

    .line 1050
    if-eqz p6, :cond_1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_5

    :cond_1
    const/16 v26, 0x1

    .line 1049
    :goto_1
    move/from16 v0, v26

    move-object/from16 v1, p5

    iput-boolean v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1051
    return-void

    .line 1009
    .end local v7    # "dimAlpha":F
    .end local v22    # "viewOutlineAlpha":F
    .end local v24    # "y":I
    .end local v25    # "z":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v26, v27, v26

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 1009
    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1011
    .local v21, "unfocusedY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v26, v27, v26

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 1011
    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v11, v0

    .line 1013
    .local v11, "focusedY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v18

    .line 1015
    .local v18, "unfocusedDim":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v8

    .line 1021
    .local v8, "focusedDim":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_3

    const/16 v26, 0x0

    cmpl-float v26, p2, v26

    if-nez v26, :cond_3

    .line 1022
    const/high16 v26, 0x3f000000    # 0.5f

    cmpl-float v26, v4, v26

    if-ltz v26, :cond_4

    .line 1023
    const/16 v18, 0x0

    .line 1031
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    .line 1032
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v11

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1031
    add-int v24, v26, v27

    .line 1033
    .restart local v24    # "y":I
    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v26

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    .line 1033
    invoke-static/range {v26 .. v28}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v25

    .line 1035
    .restart local v25    # "z":F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v7

    .line 1036
    .restart local v7    # "dimAlpha":F
    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v26

    .line 1037
    const/16 v27, 0x0

    const/high16 v28, 0x40000000    # 2.0f

    .line 1036
    invoke-static/range {v26 .. v28}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v22

    .restart local v22    # "viewOutlineAlpha":F
    goto/16 :goto_0

    .line 1025
    .end local v7    # "dimAlpha":F
    .end local v22    # "viewOutlineAlpha":F
    .end local v24    # "y":I
    .end local v25    # "z":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v15

    .line 1026
    .local v15, "offset":F
    sub-float v18, v18, v15

    .line 1027
    const/high16 v26, 0x3e800000    # 0.25f

    sub-float v26, v26, v15

    const/high16 v27, 0x3e800000    # 0.25f

    div-float v26, v27, v26

    mul-float v18, v18, v26

    goto/16 :goto_2

    .line 1050
    .end local v8    # "focusedDim":F
    .end local v11    # "focusedY":I
    .end local v15    # "offset":F
    .end local v18    # "unfocusedDim":F
    .end local v21    # "unfocusedY":I
    .restart local v7    # "dimAlpha":F
    .restart local v22    # "viewOutlineAlpha":F
    .restart local v24    # "y":I
    .restart local v25    # "z":F
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1049
    :cond_6
    const/16 v26, 0x0

    goto/16 :goto_1
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 917
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 918
    const/4 v6, 0x1

    .line 919
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 917
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    .line 920
    .local v8, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v8, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTaskRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTaskGridRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "topInset"    # I
    .param p4, "leftInset"    # I
    .param p5, "rightInset"    # I
    .param p6, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1119
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    .line 1120
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p5

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 1119
    invoke-virtual {p6, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1123
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 1124
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 1123
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    .line 1125
    .local v7, "sideMargin":I
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v7, 0x2

    sub-int v8, v0, v2

    .line 1126
    .local v8, "targetStackWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1127
    const/4 v2, 0x2

    .line 1126
    if-ne v0, v2, :cond_0

    .line 1130
    new-instance v1, Landroid/graphics/Rect;

    .line 1131
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1130
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1134
    .local v1, "portraitDisplayRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v1

    .line 1133
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v6

    .line 1136
    .local v6, "portraitSideMargin":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v6, 0x2

    sub-int/2addr v0, v2

    .line 1135
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1138
    .end local v1    # "portraitDisplayRect":Landroid/graphics/Rect;
    .end local v6    # "portraitSideMargin":I
    :cond_0
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1139
    return-void
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1057
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getYForDeltaP(FF)I
    .locals 4
    .param p1, "downScrollP"    # F
    .param p2, "p"    # F

    .prologue
    .line 1107
    sub-float v1, p2, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1108
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 1107
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1109
    .local v0, "y":I
    neg-int v1, v0

    return v1
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    .locals 11
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "state"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .prologue
    const/4 v5, 0x1

    .line 461
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 463
    .local v9, "lastStackRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v10

    .line 464
    .local v10, "topMargin":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    .line 466
    .local v7, "bottomMargin":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    .line 467
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 466
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    .line 468
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 471
    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 472
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    .line 473
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 474
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object v0, p4

    move-object v3, p3

    move v4, v10

    .line 473
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v10

    .line 478
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v4, v5

    .line 477
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    sub-int v8, v0, v1

    .line 482
    .local v8, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    .line 488
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    .line 490
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedDimCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    .line 492
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedDimCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    .line 494
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 501
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v12, 0x7f07026b

    const v11, 0x7f070266

    const v10, 0x7f070279

    const v3, 0x7f070263

    const v9, 0x7f070260

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 366
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0b0053

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 367
    const v2, 0x7f0b0052

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 366
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 368
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0b0055

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 369
    const v2, 0x7f0b0054

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 368
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 371
    const v0, 0x7f07026d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 373
    const v0, 0x7f07025d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 372
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    .line 374
    const v0, 0x7f07026f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    .line 375
    const v0, 0x7f07026e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    .line 377
    const v1, 0x7f070262

    .line 378
    const v2, 0x7f070261

    move-object v0, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    .line 376
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    .line 385
    const v1, 0x7f07025f

    .line 386
    const v2, 0x7f07025e

    move-object v0, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    move v7, v9

    .line 384
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    .line 392
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 394
    const v0, 0x7f070264

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 396
    const v0, 0x7f07026a

    .line 398
    const v1, 0x7f07026c

    .line 395
    invoke-static {p1, v0, v12, v1, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    .line 401
    const v0, 0x7f070265

    .line 403
    const v1, 0x7f070268

    .line 400
    invoke-static {p1, v0, v11, v1, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    .line 405
    const v0, 0x7f07025c

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    .line 407
    const v0, 0x7f070252

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 406
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    .line 408
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 412
    const v4, 0x7f07027a

    .line 414
    const v6, 0x7f07027a

    .line 415
    const v7, 0x7f07025a

    move v1, v10

    move v2, v10

    move v3, v10

    move v5, v10

    .line 408
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    .line 416
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 424
    return-void
.end method

.method public setFocusState(I)V
    .locals 2
    .param p1, "focusState"    # I

    .prologue
    .line 440
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 441
    .local v0, "prevFocusState":I
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 443
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    .line 446
    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 431
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 433
    return v0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 13
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "ignoreScrollToFront"    # Z

    .prologue
    .line 609
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 611
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 613
    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_2

    .line 614
    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 613
    if-nez v10, :cond_2

    .line 615
    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 613
    if-nez v10, :cond_2

    .line 616
    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    .line 613
    if-nez v10, :cond_2

    .line 617
    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 618
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v10

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 619
    if-nez p2, :cond_0

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_1

    xor-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_1

    .line 621
    :cond_0
    const/4 v2, 0x0

    .line 622
    .local v2, "initialNormX":[F
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 623
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 622
    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 623
    const/4 v11, 0x1

    .line 622
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    .line 624
    .local v5, "minBottomTaskNormX":F
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 625
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 624
    add-int/2addr v10, v11

    .line 625
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 624
    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 625
    const/4 v11, 0x0

    .line 624
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v4

    .line 626
    .local v4, "maxBottomTaskNormX":F
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_3

    .line 630
    const/4 v10, 0x2

    new-array v2, v10, [F

    .line 631
    .end local v2    # "initialNormX":[F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    .line 632
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    .line 641
    .local v2, "initialNormX":[F
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 642
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 643
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 644
    .local v8, "taskCount":I
    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 645
    sub-int v10, v8, v0

    add-int/lit8 v1, v10, -0x1

    .line 646
    .local v1, "indexFromFront":I
    array-length v10, v2

    if-lt v1, v10, :cond_4

    .line 655
    .end local v0    # "i":I
    .end local v1    # "indexFromFront":I
    .end local v2    # "initialNormX":[F
    .end local v4    # "maxBottomTaskNormX":F
    .end local v5    # "minBottomTaskNormX":F
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    return-void

    .line 613
    :cond_2
    const/4 v7, 0x1

    .local v7, "scrollToFront":Z
    goto :goto_0

    .line 635
    .end local v7    # "scrollToFront":Z
    .local v2, "initialNormX":[F
    .restart local v4    # "maxBottomTaskNormX":F
    .restart local v5    # "minBottomTaskNormX":F
    :cond_3
    const/4 v10, 0x2

    new-array v2, v10, [F

    .line 636
    .end local v2    # "initialNormX":[F
    const/4 v10, 0x0

    aput v5, v2, v10

    .line 637
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    .line 635
    .local v2, "initialNormX":[F
    goto :goto_1

    .line 649
    .restart local v0    # "i":I
    .restart local v1    # "indexFromFront":I
    .restart local v8    # "taskCount":I
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 650
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v12, v2, v1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v11

    .line 649
    add-float v6, v10, v11

    .line 651
    .local v6, "newTaskProgress":F
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 929
    if-eqz p2, :cond_1

    .line 930
    move-object v0, p2

    .line 932
    .local v0, "windowRect":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 933
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 938
    :cond_0
    return-object p1

    .line 931
    .end local v0    # "windowRect":Landroid/graphics/Rect;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "windowRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    .locals 18
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "launchState"    # Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;",
            "Lcom/android/systemui/recents/RecentsActivityLaunchState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 509
    .local p2, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 512
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 516
    .local v13, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 517
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    .line 518
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 519
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 520
    return-void

    .line 524
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v1, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v10, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_4

    .line 527
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 529
    .local v11, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v11, :cond_1

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 526
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 534
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    .end local v11    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    .line 544
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 545
    .local v12, "taskCount":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v12, :cond_5

    .line 546
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 547
    .restart local v11    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v15, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v15, v15, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v14, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 551
    .end local v11    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    move-object/from16 v0, p0

    invoke-virtual {v14, v1, v0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    .line 556
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 557
    .local v4, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v4, :cond_8

    .line 558
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    .line 560
    .local v5, "launchTaskIndex":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 561
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v7, v14, v15

    .line 562
    .local v7, "maxBottomOffset":I
    int-to-float v14, v7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v6

    .line 563
    .local v6, "maxBottomNormX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 564
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 565
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    .line 566
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 565
    sub-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 567
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v14, :cond_7

    .line 568
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 567
    if-eqz v14, :cond_9

    .line 569
    :cond_7
    int-to-float v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 603
    .end local v6    # "maxBottomNormX":F
    .end local v7    # "maxBottomOffset":I
    :goto_4
    return-void

    .line 559
    .end local v5    # "launchTaskIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v5, v14, -0x1

    .restart local v5    # "launchTaskIndex":I
    goto :goto_3

    .line 571
    .restart local v6    # "maxBottomNormX":F
    .restart local v7    # "maxBottomOffset":I
    :cond_9
    add-int/lit8 v14, v5, -0x1

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 573
    .end local v6    # "maxBottomNormX":F
    .end local v7    # "maxBottomOffset":I
    :cond_a
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v14

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 575
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 576
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 577
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 581
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v7, v14, v15

    .line 582
    .restart local v7    # "maxBottomOffset":I
    int-to-float v14, v7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v6

    .line 583
    .restart local v6    # "maxBottomNormX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 584
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 585
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    .line 586
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 585
    sub-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 587
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v14, :cond_c

    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v14, :cond_c

    .line 588
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 587
    if-nez v14, :cond_c

    .line 588
    move-object/from16 v0, p3

    iget-boolean v8, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 589
    :goto_5
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    if-eqz v14, :cond_d

    .line 590
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    .line 587
    :cond_c
    const/4 v8, 0x1

    .local v8, "scrollToFront":Z
    goto :goto_5

    .line 591
    .end local v8    # "scrollToFront":Z
    :cond_d
    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v14, :cond_e

    .line 592
    int-to-float v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    .line 593
    :cond_e
    if-eqz v8, :cond_f

    .line 594
    int-to-float v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    .line 598
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    .line 599
    .local v3, "initialTopNormX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 600
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 599
    sub-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 11
    .param p1, "lastTargetStackScroll"    # F
    .param p2, "targetStackScroll"    # F
    .param p3, "lastStackScroll"    # F

    .prologue
    const/4 v10, 0x0

    .line 703
    cmpl-float v8, p2, p3

    if-nez v8, :cond_0

    .line 704
    return p2

    .line 707
    :cond_0
    sub-float v0, p2, p3

    .line 708
    .local v0, "deltaScroll":F
    sub-float v1, p2, p1

    .line 709
    .local v1, "deltaTargetScroll":F
    move v4, p2

    .line 710
    .local v4, "newScroll":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 711
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 712
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 713
    .local v6, "taskId":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v7, v8

    .line 714
    .local v7, "x":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 715
    .local v5, "overrideX":F
    add-float v3, v5, v0

    .line 716
    .local v3, "newOverrideX":F
    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 718
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 711
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 719
    :cond_1
    cmpl-float v8, v5, v7

    if-ltz v8, :cond_3

    cmpg-float v8, v0, v10

    if-gtz v8, :cond_3

    .line 722
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 720
    :cond_3
    cmpg-float v8, v5, v7

    if-gtz v8, :cond_4

    cmpl-float v8, v0, v10

    if-gez v8, :cond_2

    .line 725
    :cond_4
    move v4, p3

    .line 726
    sub-float v3, v5, v1

    .line 727
    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 728
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 730
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 734
    .end local v3    # "newOverrideX":F
    .end local v5    # "overrideX":F
    .end local v6    # "taskId":I
    .end local v7    # "x":F
    :cond_6
    return v4
.end method

.method useGridLayout()Z
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    return v0
.end method
