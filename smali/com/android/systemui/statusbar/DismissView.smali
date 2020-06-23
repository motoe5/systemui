.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "DismissView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DismissView$DismissViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/DismissView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/DismissView;->mClearAllTopPadding:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    const v1, 0x7f070074

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DismissView;->mClearAllTopPadding:I

    .line 36
    return-void
.end method


# virtual methods
.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DismissView$DismissViewState;-><init>(Lcom/android/systemui/statusbar/DismissView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isButtonVisible()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissViewButton;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnEmptySpace(FF)Z
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v0, 0x1

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    const v1, 0x7f11017d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissViewButton;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContext:Landroid/content/Context;

    const v2, 0x7f110044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->findContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    .line 47
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
