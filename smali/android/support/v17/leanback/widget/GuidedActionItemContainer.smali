.class Landroid/support/v17/leanback/widget/GuidedActionItemContainer;
.super Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;
.source "GuidedActionItemContainer.java"


# instance fields
.field private mFocusOutAllowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;->mFocusOutAllowed:Z

    .line 38
    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 42
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;->mFocusOutAllowed:Z

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Landroid/support/v17/leanback/widget/Util;->isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 45
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/Util;->isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    return-object v0

    .line 49
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
