.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackState"
.end annotation


# static fields
.field public static final FREEFORM_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public static final SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public static final STACK_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;


# instance fields
.field public final freeformBackgroundAlpha:I

.field public final freeformHeightPct:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 151
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;-><init>(FI)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->FREEFORM_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 152
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;-><init>(FI)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->STACK_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 153
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;-><init>(FI)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 149
    return-void
.end method

.method private constructor <init>(FI)V
    .locals 0
    .param p1, "freeformHeightPct"    # F
    .param p2, "freeformBackgroundAlpha"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformHeightPct:F

    .line 165
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 166
    return-void
.end method

.method public static getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 5
    .param p0, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 172
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 173
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    .line 174
    .local v1, "hasFreeformWorkspaces":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getFreeformTaskCount()I

    move-result v0

    .line 175
    .local v0, "freeformCount":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v3

    .line 176
    .local v3, "stackCount":I
    if-eqz v1, :cond_0

    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 177
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v4

    .line 178
    :cond_0
    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 179
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->FREEFORM_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v4

    .line 181
    :cond_1
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->STACK_ONLY:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v4
.end method


# virtual methods
.method public computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 7
    .param p1, "freeformRectOut"    # Landroid/graphics/Rect;
    .param p2, "stackRectOut"    # Landroid/graphics/Rect;
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "topMargin"    # I
    .param p5, "freeformGap"    # I
    .param p6, "stackBottomOffset"    # I

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, p4

    sub-int v0, v3, p6

    .line 197
    .local v0, "availableHeight":I
    int-to-float v3, v0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformHeightPct:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 198
    .local v2, "ffPaddedHeight":I
    sub-int v3, v2, p5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 199
    .local v1, "ffHeight":I
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 200
    iget v4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    .line 201
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 202
    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p4

    add-int/2addr v6, v1

    .line 199
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 204
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 205
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 206
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    .line 203
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    if-lez v2, :cond_0

    .line 208
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p4

    iput v3, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
