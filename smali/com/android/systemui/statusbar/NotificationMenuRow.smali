.class public Lcom/android/systemui/statusbar/NotificationMenuRow;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;,
        Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAnimating:Z

.field private mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

.field private mContext:Landroid/content/Context;

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mHorizSpaceForIcon:F

.field private mIconLocation:[I

.field private mIconPadding:I

.field private mIconsPlaced:Z

.field private mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mMenuContainer:Landroid/widget/FrameLayout;

.field private mMenuFadedIn:Z

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private mMenuSnappedOnLeft:Z

.field private mMenuSnappedTo:Z

.field private mOnLeft:Z

.field private mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mPrevX:F

.field private mShouldShowMenu:Z

.field private mSnapping:Z

.field private mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mTranslation:F

.field private mVertSpaceForIcons:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationMenuRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "notiThreshold"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "alpha"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    .line 86
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    .line 88
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    .line 89
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 90
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method private addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 607
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v1

    .line 608
    .local v1, "menuView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 610
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 613
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 614
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public static createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 598
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f110377

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "infoDescription":Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 600
    const v5, 0x7f0d00a8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 599
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationInfo;

    .line 601
    .local v1, "infoContent":Lcom/android/systemui/statusbar/NotificationInfo;
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    .line 602
    const v4, 0x7f0801ee

    .line 601
    invoke-direct {v0, p0, v2, v1, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    .line 603
    .local v0, "info":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    return-object v0
.end method

.method private createMenuViews(Z)V
    .locals 7
    .param p1, "resetState"    # Z

    .prologue
    const/4 v6, 0x0

    .line 174
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 175
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0701df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    .line 176
    const v4, 0x7f0701e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 177
    const v4, 0x7f0701de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    .line 178
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v0, v4, Landroid/app/Notification;->flags:I

    .line 182
    .local v0, "flags":I
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 183
    .local v2, "isForeground":Z
    :goto_0
    if-nez v2, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v0    # "flags":I
    .end local v2    # "isForeground":Z
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 189
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 197
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 198
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    .end local v1    # "i":I
    .restart local v0    # "flags":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isForeground":Z
    goto :goto_0

    .line 195
    .end local v0    # "flags":I
    .end local v2    # "isForeground":Z
    :cond_2
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    goto :goto_1

    .line 200
    .restart local v1    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 201
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationMenuRow;->resetState(Z)V

    .line 208
    :goto_3
    return-void

    .line 203
    :cond_4
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 206
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v4

    :goto_4
    const/4 v6, 0x0

    invoke-direct {p0, v5, v4, v6}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v4

    neg-float v4, v4

    goto :goto_4
.end method

.method public static createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 588
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 589
    const v5, 0x7f0d00ab

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 588
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 590
    .local v0, "content":Lcom/android/systemui/statusbar/NotificationSnooze;
    const v4, 0x7f110378

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "snoozeDescription":Ljava/lang/String;
    new-instance v2, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    .line 592
    const v4, 0x7f080205

    .line 591
    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    .line 593
    .local v2, "snooze":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    return-object v2
.end method

.method private dismiss(Landroid/view/View;F)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->dismiss(Landroid/view/View;F)V

    .line 374
    return-void
.end method

.method private fadeInMenu(F)V
    .locals 6
    .param p1, "notiThreshold"    # F

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 536
    :cond_0
    return-void

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 541
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    .line 542
    .local v1, "transX":F
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 543
    .local v0, "fromLeft":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 544
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 545
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow$1;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;FZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 557
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/NotificationMenuRow$2;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 578
    return-void

    .line 542
    .end local v0    # "fromLeft":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "fromLeft":Z
    goto :goto_0
.end method

.method private getSpaceForMenu()F
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    .line 283
    :goto_0
    const/16 v16, 0x1

    return v16

    .line 281
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto :goto_0

    .line 286
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result v6

    .line 288
    .local v6, "gestureTowardsMenu":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->getMinDismissVelocity()F

    move-result v16

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_2

    const/4 v5, 0x1

    .line 290
    .local v5, "gestureFastEnough":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->swipedFarEnough(FF)Z

    move-result v4

    .line 291
    .local v4, "gestureFarEnough":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v14, v0

    .line 292
    .local v14, "timeForGesture":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v16

    if-nez v16, :cond_4

    .line 293
    const-wide/high16 v16, 0x4069000000000000L    # 200.0

    cmpl-double v16, v14, v16

    if-ltz v16, :cond_3

    const/4 v10, 0x1

    .line 294
    .local v10, "showMenuForSlowOnGoing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v8

    .line 310
    .local v8, "menuSnapTarget":F
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v16

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    move/from16 v16, v0

    .line 314
    const v17, 0x3e4ccccd    # 0.2f

    .line 313
    mul-float v7, v16, v17

    .line 315
    .local v7, "maximumSwipeDistance":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v16

    sub-float v11, v16, v7

    .line 316
    .local v11, "targetLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3f19999a    # 0.6f

    mul-float v12, v16, v17

    .line 317
    .local v12, "targetRight":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v16, v0

    cmpl-float v16, v16, v11

    if-lez v16, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v16, v0

    cmpg-float v16, v16, v12

    if-gez v16, :cond_6

    const/4 v13, 0x1

    .line 320
    .local v13, "withinSnapMenuThreshold":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v16, v0

    cmpg-float v16, v16, v11

    if-gez v16, :cond_9

    :goto_5
    const/4 v9, 0x1

    .line 327
    .local v9, "shouldSnapTo":Z
    :goto_6
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_b

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    .line 346
    .end local v7    # "maximumSwipeDistance":F
    .end local v9    # "shouldSnapTo":Z
    .end local v11    # "targetLeft":F
    .end local v12    # "targetRight":F
    .end local v13    # "withinSnapMenuThreshold":Z
    :goto_7
    const/16 v16, 0x1

    return v16

    .line 288
    .end local v4    # "gestureFarEnough":Z
    .end local v5    # "gestureFastEnough":Z
    .end local v8    # "menuSnapTarget":F
    .end local v10    # "showMenuForSlowOnGoing":Z
    .end local v14    # "timeForGesture":D
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "gestureFastEnough":Z
    goto/16 :goto_1

    .line 293
    .restart local v4    # "gestureFarEnough":Z
    .restart local v14    # "timeForGesture":D
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "showMenuForSlowOnGoing":Z
    goto/16 :goto_2

    .line 292
    .end local v10    # "showMenuForSlowOnGoing":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "showMenuForSlowOnGoing":Z
    goto/16 :goto_2

    .line 294
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v16

    move/from16 v0, v16

    neg-float v8, v0

    .restart local v8    # "menuSnapTarget":F
    goto/16 :goto_3

    .line 318
    .restart local v7    # "maximumSwipeDistance":F
    .restart local v11    # "targetLeft":F
    .restart local v12    # "targetRight":F
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "withinSnapMenuThreshold":Z
    goto :goto_4

    .line 319
    .end local v13    # "withinSnapMenuThreshold":Z
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v16, v0

    neg-float v0, v11

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v16, v0

    neg-float v0, v12

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_8

    const/4 v13, 0x1

    .restart local v13    # "withinSnapMenuThreshold":Z
    goto :goto_4

    .end local v13    # "withinSnapMenuThreshold":Z
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "withinSnapMenuThreshold":Z
    goto :goto_4

    .line 320
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "shouldSnapTo":Z
    goto :goto_6

    .end local v9    # "shouldSnapTo":Z
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v16, v0

    neg-float v0, v11

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_9

    goto :goto_5

    .line 330
    .restart local v9    # "shouldSnapTo":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_c

    xor-int/lit8 v16, v9, 0x1

    if-eqz v16, :cond_c

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    goto :goto_7

    .line 334
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto :goto_7

    .line 336
    .end local v7    # "maximumSwipeDistance":F
    .end local v9    # "shouldSnapTo":Z
    .end local v11    # "targetLeft":F
    .end local v12    # "targetRight":F
    .end local v13    # "withinSnapMenuThreshold":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->swipedEnoughToShowMenu()Z

    move-result v16

    if-eqz v16, :cond_e

    if-eqz v5, :cond_f

    .line 336
    if-nez v10, :cond_f

    .line 338
    :cond_e
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    .line 336
    if-eqz v16, :cond_10

    .line 340
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto/16 :goto_7

    .line 341
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_11

    xor-int/lit8 v16, v6, 0x1

    if-eqz v16, :cond_11

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    goto/16 :goto_7

    .line 344
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    goto/16 :goto_7
.end method

.method private isMenuLocationChange()Z
    .locals 4

    .prologue
    .line 470
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 471
    .local v0, "onLeft":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const/4 v1, 0x1

    .line 472
    .local v1, "onRight":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 473
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 470
    .end local v0    # "onLeft":Z
    .end local v1    # "onRight":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "onLeft":Z
    goto :goto_0

    .line 471
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "onRight":Z
    goto :goto_1

    .line 475
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isTowardsMenu(F)Z
    .locals 4
    .param p1, "movement"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v2, :cond_1

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-nez v2, :cond_2

    cmpl-float v2, p1, v3

    if-gez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 394
    goto :goto_0
.end method

.method private resetState(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 212
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuReset(Landroid/view/View;)V

    .line 222
    :cond_0
    return-void
.end method

.method private setMenuAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    const/4 v3, 0x0

    .line 497
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    .line 498
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 502
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    .line 503
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 507
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 508
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 511
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setMenuLocation()V
    .locals 9

    .prologue
    .line 479
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v4, 0x1

    .line 480
    .local v4, "showOnLeft":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-ne v4, v6, :cond_2

    .line 483
    :cond_0
    return-void

    .line 479
    .end local v4    # "showOnLeft":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "showOnLeft":Z
    goto :goto_0

    .line 480
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 481
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 480
    if-nez v6, :cond_0

    .line 485
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 486
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 487
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 488
    .local v5, "v":Landroid/view/View;
    int-to-float v6, v1

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    mul-float v2, v6, v7

    .line 489
    .local v2, "left":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float v3, v6, v7

    .line 490
    .local v3, "right":F
    if-eqz v4, :cond_3

    .end local v2    # "left":F
    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setX(F)V

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v2    # "left":F
    :cond_3
    move v2, v3

    .line 490
    goto :goto_2

    .line 492
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    .line 493
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 494
    return-void
.end method

.method private showMenu(Landroid/view/View;FF)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuShown(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snap(Landroid/view/View;FF)V

    .line 354
    return-void
.end method

.method private snapBack(Landroid/view/View;F)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snap(Landroid/view/View;FF)V

    .line 364
    return-void
.end method

.method private swipedEnoughToShowMenu()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 381
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    const/high16 v1, 0x3e800000    # 0.25f

    .line 384
    .local v1, "multiplier":F
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    mul-float v0, v4, v1

    .line 385
    .local v0, "minimumSwipeDistance":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v4, v5, v5}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->swipedFarEnough(FF)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_2

    .line 385
    :cond_0
    :goto_1
    return v2

    .line 383
    .end local v0    # "minimumSwipeDistance":F
    .end local v1    # "multiplier":F
    :cond_1
    const v1, 0x3e19999a    # 0.15f

    .restart local v1    # "multiplier":F
    goto :goto_0

    .restart local v0    # "minimumSwipeDistance":F
    :cond_2
    move v2, v3

    .line 386
    goto :goto_1

    .line 387
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    neg-float v5, v0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v3

    .line 385
    goto :goto_1
.end method


# virtual methods
.method public createMenu(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 133
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createMenuViews(Z)V

    .line 135
    return-void
.end method

.method public getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object v0
.end method

.method public getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isMenuVisible()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 455
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-nez v5, :cond_0

    .line 457
    return-void

    .line 459
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 460
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 461
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 462
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 463
    .local v1, "centerY":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int v3, v5, v0

    .line 464
    .local v3, "x":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    add-int v4, v5, v1

    .line 465
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 466
    .local v2, "index":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v6, v7, v3, v4, v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 467
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;)V

    .line 164
    return-void
.end method

.method public onHeightUpdate()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 420
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 421
    :cond_0
    return-void

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    .line 425
    .local v0, "parentHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    if-ge v0, v2, :cond_2

    .line 426
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 430
    .local v1, "translationY":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 431
    return-void

    .line 428
    .end local v1    # "translationY":F
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    sub-float/2addr v2, v3

    div-float v1, v2, v4

    .restart local v1    # "translationY":F
    goto :goto_0
.end method

.method public onLayout()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeListener()V

    .line 171
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createMenuViews(Z)V

    .line 159
    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "velocity"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 227
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return v6

    .line 229
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    goto :goto_0

    .line 239
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    sub-float v1, v2, v3

    .line 241
    .local v1, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    .line 242
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 249
    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .line 256
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    if-eqz v2, :cond_0

    .line 257
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 256
    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 256
    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 256
    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 256
    if-eqz v2, :cond_0

    .line 262
    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 252
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    goto :goto_1

    .line 268
    .end local v1    # "diffX":F
    :pswitch_2
    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z

    move-result v2

    return v2

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTranslationUpdate(F)V
    .locals 5
    .param p1, "translation"    # F

    .prologue
    .line 435
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    .line 436
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 438
    :cond_0
    return-void

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v2, v3, v4

    .line 441
    .local v2, "fadeThreshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 442
    .local v0, "absTrans":F
    const/4 v1, 0x0

    .line 443
    .local v1, "desiredAlpha":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 444
    const/4 v1, 0x0

    .line 450
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 451
    return-void

    .line 445
    :cond_2
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_3

    .line 446
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 448
    :cond_3
    sub-float v3, v0, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v3

    goto :goto_0
.end method

.method public resetMenu()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->resetState(Z)V

    .line 150
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 405
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 406
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 407
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 409
    .local v3, "item":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    const v6, 0x7f110376

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 408
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 410
    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 408
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "description":Ljava/lang/String;
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v4

    .line 412
    .local v4, "menuView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "description":Ljava/lang/String;
    .end local v3    # "item":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .end local v4    # "menuView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 129
    return-void
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    return-void
.end method

.method public setSwipeActionHelper(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 124
    return-void
.end method
