.class Lcom/android/systemui/pip/tv/PipManager$5;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 639
    sget-boolean v2, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "onActivityPinned()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->-get1(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/pip/tv/PipManager$5;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    return-void

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->-wrap0(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 644
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v1, :cond_2

    .line 645
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "Cannot find pinned stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 648
    :cond_2
    sget-boolean v2, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "PipManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PINNED_STACK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/pip/tv/PipManager;->-set4(Lcom/android/systemui/pip/tv/PipManager;I)I

    .line 650
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    .line 651
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    .line 650
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/pip/tv/PipManager;->-set3(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 653
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2, v6}, Lcom/android/systemui/pip/tv/PipManager;->-set5(Lcom/android/systemui/pip/tv/PipManager;I)I

    .line 654
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipManager;->-get7(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/pip/tv/PipManager;->-set0(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 655
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->-get6(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipManager;->-get0(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    .line 655
    invoke-virtual {v2, v3, v5}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 657
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipManager;->-get6(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/pip/tv/PipManager;->-wrap6(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V

    .line 658
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->-get5(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 659
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->-get5(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipEntered()V

    .line 658
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 661
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2, v6}, Lcom/android/systemui/pip/tv/PipManager;->-wrap7(Lcom/android/systemui/pip/tv/PipManager;Z)V

    .line 662
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 2
    .param p1, "clearedTask"    # Z

    .prologue
    .line 666
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PipManager"

    const-string/jumbo v1, "onPinnedActivityRestartAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-get1(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/tv/PipManager$5;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->movePipToFullscreen()V

    .line 672
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    .prologue
    .line 676
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PipManager"

    const-string/jumbo v1, "onPinnedStackAnimationEnded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-get1(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/tv/PipManager$5;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-wrap2(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 682
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-wrap5(Lcom/android/systemui/pip/tv/PipManager;)V

    goto :goto_0

    .line 680
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskStackChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 602
    sget-boolean v4, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PipManager"

    const-string/jumbo v5, "onTaskStackChanged()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-get1(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/Context;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/pip/tv/PipManager$5;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 604
    return-void

    .line 606
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-wrap2(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 607
    const/4 v1, 0x0

    .line 609
    .local v1, "hasPip":Z
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-wrap0(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 610
    .local v3, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-nez v4, :cond_3

    .line 611
    :cond_2
    const-string/jumbo v4, "PipManager"

    const-string/jumbo v5, "There is nothing in pinned stack"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4, v6}, Lcom/android/systemui/pip/tv/PipManager;->-wrap3(Lcom/android/systemui/pip/tv/PipManager;Z)V

    .line 613
    return-void

    .line 615
    :cond_3
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 616
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v5}, Lcom/android/systemui/pip/tv/PipManager;->-get8(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 618
    const/4 v1, 0x1

    .line 622
    :cond_4
    if-nez v1, :cond_6

    .line 624
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4, v7}, Lcom/android/systemui/pip/tv/PipManager;->-wrap3(Lcom/android/systemui/pip/tv/PipManager;Z)V

    .line 625
    return-void

    .line 615
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 628
    .end local v1    # "hasPip":Z
    .end local v2    # "i":I
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-wrap2(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 629
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-wrap1(Lcom/android/systemui/pip/tv/PipManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-get10(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    .line 630
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-get7(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v4

    if-eq v4, v0, :cond_7

    .line 631
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4, v0}, Lcom/android/systemui/pip/tv/PipManager;->-set2(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 632
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v4, v7}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 635
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_7
    return-void

    .line 629
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v4}, Lcom/android/systemui/pip/tv/PipManager;->-get3(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_1
.end method
