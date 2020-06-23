.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field private justReplaced:Z

.field public justUndarkened:Z

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public translateContent:Z

.field public useFullTransitionAmount:Z

.field public useLinearTransitionAmount:Z

.field public visibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 545
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 546
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 547
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 545
    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 561
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_a

    move-object v4, p1

    .line 562
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 563
    .local v4, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v0, 0x0

    .line 564
    .local v0, "animate":Z
    const/4 v2, 0x0

    .line 565
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v5, :cond_b

    .line 566
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 565
    if-eqz v5, :cond_b

    .line 567
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    xor-int/lit8 v3, v5, 0x1

    .line 568
    :goto_0
    if-eqz v3, :cond_8

    .line 569
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v5, :cond_c

    .line 570
    :cond_1
    invoke-super {p0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 571
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_2

    .line 572
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 573
    invoke-virtual {v4, v8, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 575
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 576
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 585
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 586
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-lt v5, v7, :cond_4

    .line 587
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 588
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v5, v8, :cond_4

    .line 589
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 590
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 592
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v5, :cond_6

    .line 593
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 594
    .local v1, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 596
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v5

    .line 595
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 597
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 598
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 599
    if-eqz v2, :cond_5

    .line 600
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 601
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 603
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 604
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 605
    const/4 v0, 0x1

    .line 606
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    .line 608
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_6
    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v5

    if-ltz v5, :cond_8

    .line 609
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-le v5, v7, :cond_8

    .line 610
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 611
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v5, v8, :cond_8

    .line 612
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 613
    .restart local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 614
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 615
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 616
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 617
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 618
    const/4 v0, 0x1

    .line 621
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 623
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, p1

    .line 624
    check-cast v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 627
    :cond_9
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v7, :cond_e

    :goto_2
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 628
    if-eqz v0, :cond_f

    .line 629
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 634
    .end local v0    # "animate":Z
    .end local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_a
    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 635
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 636
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 637
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    .line 638
    return-void

    .line 565
    .restart local v0    # "animate":Z
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .restart local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_b
    const/4 v3, 0x0

    .local v3, "animationsAllowed":Z
    goto/16 :goto_0

    .line 578
    .end local v3    # "animationsAllowed":Z
    :cond_c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v5, :cond_d

    .line 579
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 580
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 581
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_d
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-eq v5, v7, :cond_2

    .line 582
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 583
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_e
    move v3, v6

    .line 627
    goto :goto_2

    .line 631
    :cond_f
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 642
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 643
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 644
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 646
    :cond_0
    return-void
.end method
