.class public Lcom/android/systemui/pip/tv/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private mRestorePipSizeWhenClose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 33
    return-void
.end method

.method private restorePipAndFinish()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 76
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 52
    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlsView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    .line 54
    const v0, 0x7f0100be

    .line 53
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 57
    const v0, 0x7f0100bf

    .line 56
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "custom_actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 96
    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resumePipResizing(I)V

    .line 97
    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 127
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "custom_actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    .line 89
    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 110
    return-void
.end method

.method public onPipEntered()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 3
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/pip/tv/PipControlsView;->setActions(Ljava/util/List;)V

    .line 116
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, "hasCustomActions":Z
    goto :goto_0

    .line 115
    .end local v0    # "hasCustomActions":Z
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1
.end method

.method public onPipResizeAboutToStart()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 133
    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->suspendPipResizing(I)V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 82
    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
