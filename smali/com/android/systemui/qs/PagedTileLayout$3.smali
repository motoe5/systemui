.class Lcom/android/systemui/qs/PagedTileLayout$3;
.super Ljava/lang/Object;
.source "PagedTileLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/PagedTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/PagedTileLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 65
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Lcom/android/systemui/qs/PagedTileLayout;->-wrap1(Lcom/android/systemui/qs/PagedTileLayout;IZ)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    int-to-float v3, p1

    add-float/2addr v3, p2

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    if-nez p3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/PagedTileLayout;->-get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    :goto_1
    move v2, v1

    .line 58
    :cond_1
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    .line 61
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 55
    goto :goto_0

    .line 59
    :cond_4
    if-nez p1, :cond_1

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/PagedTileLayout;->-get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    :cond_1
    :goto_0
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    .line 49
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    if-eqz p1, :cond_1

    move v0, v1

    goto :goto_0
.end method
