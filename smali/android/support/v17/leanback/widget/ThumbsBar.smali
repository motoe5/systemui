.class public Landroid/support/v17/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "ThumbsBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mHeroThumbHeight:I

.field mHeroThumbWidth:I

.field mMeasuredMargin:I

.field mMinimalMargin:I

.field mNumOfThumbs:I

.field mThumbHeight:I

.field mThumbWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v2, 0xf0

    const/16 v1, 0xa0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMinimalMargin:I

    .line 40
    iput v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    .line 41
    iput v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeight:I

    .line 42
    iput v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidth:I

    .line 43
    iput v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeight:I

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    .line 53
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbs(I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 203
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeroIndex()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v2

    .line 172
    .local v2, "heroIndex":I
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 173
    .local v5, "heroView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 174
    .local v3, "heroLeft":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .line 175
    .local v4, "heroRight":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v7

    .line 176
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 175
    invoke-virtual {v5, v3, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    .line 179
    .local v1, "heroCenter":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 180
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMargin:I

    sub-int/2addr v3, v7

    .line 181
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v3, v7

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    .line 182
    invoke-virtual {v0, v7, v8, v3, v9}, Landroid/view/View;->layout(IIII)V

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    .line 179
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 188
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v2, 0x1

    :goto_1
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v6, v7, :cond_1

    .line 189
    iget v7, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMargin:I

    add-int/2addr v4, v7

    .line 190
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    .line 191
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 155
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getMeasuredWidth()I

    move-result v1

    .line 156
    .local v1, "width":I
    const/4 v0, 0x0

    .line 157
    .local v0, "spaceForMargin":I
    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 158
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidth:I

    sub-int v3, v1, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 159
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMinimalMargin:I

    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 160
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbs(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-lez v3, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    add-int/lit8 v2, v2, -0x1

    div-int v2, v0, v2

    :cond_1
    iput v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMargin:I

    .line 166
    return-void
.end method

.method public setNumberOfThumbs(I)V
    .locals 7
    .param p1, "numOfThumbs"    # I

    .prologue
    .line 121
    if-gez p1, :cond_0

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 124
    :cond_0
    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_1

    .line 126
    add-int/lit8 p1, p1, 0x1

    .line 128
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 129
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-le v5, v6, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 132
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v5, v6, :cond_3

    .line 133
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 134
    .local v4, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v3}, Landroid/support/v17/leanback/widget/ThumbsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 137
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v1

    .line 138
    .local v1, "heroIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 139
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-ne v1, v2, :cond_4

    .line 142
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidth:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 143
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeight:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_4
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidth:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 146
    iget v5, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeight:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 150
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    return-void
.end method
