.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getBouncerPromptReason()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 678
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 679
    .local v1, "currentUser":I
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v5

    .line 680
    .local v5, "trust":Z
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 681
    .local v2, "fingerprint":Z
    if-nez v5, :cond_0

    move v0, v2

    .line 683
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v4

    .line 684
    .local v4, "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    .line 686
    .local v3, "strongAuth":I
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 687
    const/4 v6, 0x1

    return v6

    .line 681
    .end local v3    # "strongAuth":I
    .end local v4    # "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    :cond_0
    const/4 v0, 0x1

    .local v0, "any":Z
    goto :goto_0

    .line 688
    .end local v0    # "any":Z
    .restart local v3    # "strongAuth":I
    .restart local v4    # "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    :cond_1
    if-eqz v0, :cond_2

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_2

    .line 689
    const/4 v6, 0x2

    return v6

    .line 690
    :cond_2
    if-eqz v0, :cond_3

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_3

    .line 691
    const/4 v6, 0x3

    return v6

    .line 692
    :cond_3
    if-eqz v5, :cond_4

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_4

    .line 693
    const/4 v6, 0x4

    return v6

    .line 694
    :cond_4
    if-eqz v0, :cond_5

    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_5

    .line 695
    const/4 v6, 0x5

    return v6

    .line 697
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockedout()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 698
    const/16 v6, 0xa

    return v6

    .line 702
    :cond_6
    return v7
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZI)V
    .locals 1
    .param p1, "strongAuth"    # Z
    .param p2, "targetUserId"    # I

    .prologue
    .line 602
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 603
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 607
    if-eqz p1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 610
    :cond_1
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 614
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 616
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 617
    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 4
    .param p1, "strongAuth"    # Z
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v1, 0x1

    .line 626
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 628
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 629
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 633
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 634
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 635
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    .line 637
    const-wide/16 v2, 0xbb8

    .line 636
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 638
    if-eqz p1, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 641
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 642
    return-void
.end method

.method public keyguardGone()V
    .locals 1

    .prologue
    .line 646
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 648
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 649
    return-void
.end method

.method public playTrustedSound()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 669
    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    .prologue
    .line 653
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 656
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 658
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 659
    return-void
.end method

.method public resetKeyguard()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 664
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    .line 622
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 598
    return-void
.end method
