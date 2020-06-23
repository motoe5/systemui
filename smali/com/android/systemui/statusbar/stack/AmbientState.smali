.class public Lcom/android/systemui/statusbar/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mBaseZHeight:I

.field private mCurrentScrollVelocity:F

.field private mDark:Z

.field private mDimmed:Z

.field private mDismissAllInProgress:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandingVelocity:F

.field private mExpansionChanging:Z

.field private mHasPulsingNotifications:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideSensitive:Z

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mLayoutHeight:I

.field private mLayoutMinHeight:I

.field private mMaxHeadsUpTranslation:F

.field private mMaxLayoutHeight:I

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mPanelFullWidth:Z

.field private mPanelTracking:Z

.field private mScrollY:I

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mSpeedBumpIndex:I

.field private mStackTranslation:F

.field private mStatusBarState:I

.field private mTopPadding:I

.field private mUnlockHintRunning:Z

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getBaseZHeight()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    return v0
.end method

.method public getCurrentScrollVelocity()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    return v0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpandingVelocity()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    return v0
.end method

.method public getInnerHeight()I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getMaxHeadsUpTranslation()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return v0
.end method

.method public getOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return v0
.end method

.method public getShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getSpeedBumpIndex()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return v0
.end method

.method public getStackTranslation()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    int-to-float v0, v0

    return v0
.end method

.method public getZDistanceBetweenElements()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    return v0
.end method

.method public hasPulsingNotifications()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHasPulsingNotifications:Z

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return v0
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return v0
.end method

.method public isExpansionChanging()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    return v0
.end method

.method public isHideSensitive()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 263
    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelFullWidth()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    return v0
.end method

.method public isPanelTracking()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    return v0
.end method

.method public isShadeExpanded()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    return v0
.end method

.method public isUnlockHintRunning()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public reload(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    const v1, 0x7f0702f1

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    .line 75
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    .line 76
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 135
    return-void
.end method

.method public setCurrentScrollVelocity(F)V
    .locals 0
    .param p1, "currentScrollVelocity"    # F

    .prologue
    .line 255
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 256
    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    .line 123
    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    .line 118
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 0
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDismissAllInProgress:Z

    .line 219
    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0
    .param p1, "expandingVelocity"    # F

    .prologue
    .line 271
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    .line 272
    return-void
.end method

.method public setExpansionChanging(Z)V
    .locals 0
    .param p1, "expansionChanging"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    .line 276
    return-void
.end method

.method public setHasPulsingNotifications(Z)V
    .locals 0
    .param p1, "hasPulsing"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHasPulsingNotifications:Z

    .line 296
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 175
    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    .line 127
    return-void
.end method

.method public setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "lastVisibleBackgroundChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 248
    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0
    .param p1, "layoutHeight"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    .line 187
    return-void
.end method

.method public setLayoutMaxHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    .line 239
    return-void
.end method

.method public setLayoutMinHeight(I)V
    .locals 0
    .param p1, "layoutMinHeight"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    .line 227
    return-void
.end method

.method public setMaxHeadsUpTranslation(F)V
    .locals 0
    .param p1, "maxHeadsUpTranslation"    # F

    .prologue
    .line 210
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 211
    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public setPanelFullWidth(Z)V
    .locals 0
    .param p1, "panelFullWidth"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    .line 308
    return-void
.end method

.method public setPanelTracking(Z)V
    .locals 0
    .param p1, "panelTracking"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    .line 288
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    .line 98
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    .line 207
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 231
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "shelfIndex"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 171
    return-void
.end method

.method public setStackTranslation(F)V
    .locals 0
    .param p1, "stackTranslation"    # F

    .prologue
    .line 182
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    .line 183
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    .line 268
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .param p1, "topPadding"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    .line 195
    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 0
    .param p1, "unlockHintRunning"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    .line 312
    return-void
.end method
