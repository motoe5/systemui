.class Landroid/support/v17/leanback/widget/ResizingTextView;
.super Landroid/widget/TextView;
.source "ResizingTextView.java"


# instance fields
.field private mDefaultLineSpacingExtra:F

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mDefaultTextSize:I

.field private mDefaultsInitialized:Z

.field private mIsResized:Z

.field private mMaintainLineSpacing:Z

.field private mResizedPaddingAdjustmentBottom:I

.field private mResizedPaddingAdjustmentTop:I

.field private mResizedTextSize:I

.field private mTriggerConditions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 45
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 53
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizeTrigger:I

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    .line 60
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedTextSize:I

    const/4 v2, -0x1

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    .line 62
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_maintainLineSpacing:I

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    .line 64
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentTop:I

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    .line 66
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentBottom:I

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    throw v1
.end method

.method private setPaddingTopAndBottom(II)V
    .locals 2
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingRelative(IIII)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    if-nez v9, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    .line 197
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    .line 198
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    .line 199
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    .line 200
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 205
    :cond_0
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 206
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 207
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 211
    const/4 v7, 0x0

    .line 213
    .local v7, "resizeText":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 214
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_1

    .line 215
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_1

    .line 216
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 217
    .local v2, "lineCount":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getMaxLines()I

    move-result v3

    .line 218
    .local v3, "maxLines":I
    const/4 v9, 0x1

    if-le v3, v9, :cond_1

    .line 219
    if-ne v2, v3, :cond_7

    const/4 v7, 0x1

    .line 224
    .end local v2    # "lineCount":I
    .end local v3    # "maxLines":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v9

    float-to-int v0, v9

    .line 225
    .local v0, "currentSizePx":I
    const/4 v6, 0x0

    .line 226
    .local v6, "remeasure":Z
    if-eqz v7, :cond_8

    .line 227
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v0, v9, :cond_2

    .line 228
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 229
    const/4 v6, 0x1

    .line 232
    :cond_2
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    .line 233
    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v10, v10

    .line 232
    add-float/2addr v9, v10

    .line 233
    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v10, v10

    .line 232
    sub-float v8, v9, v10

    .line 234
    .local v8, "targetLineSpacingExtra":F
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    cmpl-float v9, v9, v8

    if-eqz v9, :cond_3

    .line 235
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 236
    const/4 v6, 0x1

    .line 238
    :cond_3
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    add-int v5, v9, v10

    .line 239
    .local v5, "paddingTop":I
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I

    add-int v4, v9, v10

    .line 240
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    if-ne v9, v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    if-eq v9, v4, :cond_5

    .line 241
    :cond_4
    invoke-direct {p0, v5, v4}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 242
    const/4 v6, 0x1

    .line 260
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v8    # "targetLineSpacingExtra":F
    :cond_5
    :goto_1
    iput-boolean v7, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 261
    if-eqz v6, :cond_6

    .line 262
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 264
    :cond_6
    return-void

    .line 219
    .end local v0    # "currentSizePx":I
    .end local v6    # "remeasure":Z
    .restart local v2    # "lineCount":I
    .restart local v3    # "maxLines":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 246
    .end local v2    # "lineCount":I
    .end local v3    # "maxLines":I
    .restart local v0    # "currentSizePx":I
    .restart local v6    # "remeasure":Z
    :cond_8
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    if-eq v0, v9, :cond_9

    .line 247
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 248
    const/4 v6, 0x1

    .line 250
    :cond_9
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_a

    .line 251
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 252
    const/4 v6, 0x1

    .line 254
    :cond_a
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    if-ne v9, v10, :cond_b

    .line 255
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    if-eq v9, v10, :cond_5

    .line 256
    :cond_b
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 257
    const/4 v6, 0x1

    goto :goto_1
.end method
