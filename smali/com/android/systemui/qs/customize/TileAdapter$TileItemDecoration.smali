.class Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileItemDecoration"
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/ColorDrawable;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 481
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 483
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010530

    aput v2, v1, v3

    invoke-virtual {p2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 484
    .local v0, "ta":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 485
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "-this2"    # Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 491
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 493
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 494
    .local v2, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    .line 495
    .local v7, "width":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    .line 496
    .local v0, "bottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 497
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 499
    .local v3, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v9}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v9

    if-ge v8, v9, :cond_0

    instance-of v8, v1, Landroid/widget/TextView;

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 505
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    .line 506
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 505
    add-int v6, v8, v9

    .line 508
    .local v6, "top":I
    iget-object v8, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6, v7, v0}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 509
    iget-object v8, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v5    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6    # "top":I
    :cond_1
    return-void
.end method
