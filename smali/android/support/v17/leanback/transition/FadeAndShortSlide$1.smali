.class final Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;
.super Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 4
    .param p1, "t"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # [I

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 85
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result v3

    add-float v1, v2, v3

    .line 90
    .local v1, "x":F
    :goto_1
    return v1

    .line 83
    .end local v0    # "isRtl":Z
    .end local v1    # "x":F
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isRtl":Z
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result v3

    sub-float v1, v2, v3

    .restart local v1    # "x":F
    goto :goto_1
.end method
