.class public Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "MAIN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "INFO"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "EXTRA"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 877
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 878
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 864
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 858
    iput v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 865
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 868
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_Layout_layout_viewType:I

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 870
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 871
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .prologue
    .line 894
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 896
    iget v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 897
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 884
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 885
    return-void
.end method
